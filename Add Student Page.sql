DECLARE
    student_id number;

BEGIN

student_id := LMS_STUDENT_DETAILS_SEQ.nextval;
insert into LMS_STUDENT_DETAILS (STUDENT_ID,STUDENT_NAME,GENDER,DATE_OF_BIRTH,COURSE,CONTACT_NUMBER,DEPARTMENT)
values(student_id,:P6_STUDENT_NAME, :P6_GENDER, :P6_DOB, :P6_COURSE, :P6_CONTACT_NO, :P6_DEPARTMENT );

insert into LMS_BORROWER (BORROWER_ID,ENTITY_OWNER_FK,ENTITY_TYPE)
values(LMS_BORROWER_SEQ.nextval, student_id, 'STUDENT');
END;