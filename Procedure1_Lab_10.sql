/* Muhammad Rehan Riaz 23-CS-76 Section B */
create Procedure InsertValues 
@P_ID int,@Name nvarchar(20),@Age int,@City nvarchar(50)
as 
insert into Persons values (@P_ID,@Name,@Age,@City);
go
exec InsertValues @P_ID=1,@Name='Rehan',@Age=20,@City='Chakwal';
exec InsertValues @P_ID=2,@Name='Farhan',@Age=21,@City='Chakwal';
exec InsertValues @P_ID=3,@Name='Usman',@Age=18,@City='Rawalpindi';
exec InsertValues @P_ID=4,@Name='Sumama',@Age=20,@City='Buchal Kalan';
Select * from Persons
/* Muhammad Rehan Riaz 23-CS-76 Section B */
ALTER Procedure RetreiveValues @D_Name varchar(50)
as Select Tbl_Emp.E_ID,Tbl_Emp.E_Name,Tbl_Dept.D_Name,Tbl_Dept.D_Head from Tbl_Emp
inner join Tbl_Dept
on Tbl_Emp.E_Dept=Tbl_Dept.D_ID
where Tbl_Dept.D_Name like @D_Name

exec RetreiveValues @D_Name='Comp Engg';
