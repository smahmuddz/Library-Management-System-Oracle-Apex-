select LBI.BOOK_ISSUE_ID,
(select LBD.BOOK_TITLE from LMS_BOOK_detail LBD where LBD.BOOK_ID=LBI.BOOK_ID) as Book_Title,
(select STAFF_NAME from LMS_STAFF_DETAIL 
where STAFF_ID= (select LB.ENTITY_OWNER_FK from LMS_BORROWER LB 
WHERE LB.BORROWER_ID=LBI.BORROWER_ID)) as Staff_Name,
LBI.ISSUED_BY,LBI.BORROWED_FROM_DATE,LBI.BORROWED_TO_DATE
from LMS_BOOK_ISSUE LBI where LBI.BORROWER_TYPE= 'FACULTY' and BOOK_RT_STATUS =1