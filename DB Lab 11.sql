create table Products(
       P_Id int primary key,
	   P_Name varchar(100),
	   P_Quantity int,
	   P_Total_Sale int,
)
create table TbL_Sales(
       S_ID int primary key,
	   P_Id int,
	   S_Date date,
	   S_Price int,
	   Customer varchar(100),
	   Foreign key(P_Id) references Products(P_Id),
)
insert into Products
values(1,'suger',100,2600),
(2,'salt',100,NULL),
(3,'biscuits',50,1000),
(4,'tea',50,2000),
(5,'bread',10,NULL),
(6,'cake',15,NULL);

insert into TbL_Sales(S_ID,P_Id,S_Date,S_Price,Customer)
values(1,1,'2008-11-12',1000.0000,'Hansen'),
(2,1,'2008-10-23',1600.0000,'Nilsen'),
(3,3,'2008-09-02',700.0000,'Hansen'),
(4,3,'2008-09-03',300.0000,'Hansen'),
(5,4,'2008-08-30',2000.0000,'Jensen');
/*Task No:1*/
/* Muhammad Rehan Riaz 23-CS-76 Section B*/
create trigger Reminder
on TbL_Sales after insert,update
as 
declare @MSG as varchar(150);
set @MSG='Something is inserted or updated in the Sales Table';
Raiserror(
     @MSG,
	 10,
	 1,
	 N'number',
	 5
 )

/*Task No:2*/
/* Muhammad Rehan Riaz 23-CS-76 Section B*/
create trigger TRI_SalesLimit
on TbL_Sales
after insert,update
as
begin
    declare @MSG as varchar(250)
    set @MSG='Total Sales of the company is going to increase beyond the limit.'
    if exists(select 1 FROM TBL_SALES where S_Price > 100000)
    begin
        raiserror(@MSG, 10, 1)
        rollback transaction
        return
    end
end
go

update TbL_Sales set S_Price =200000 where S_Id=3
Select * from TbL_Sales
/*Task No:3*/
/* Muhammad Rehan Riaz 23-CS-76 Section B*/
create trigger update_sales
on tbl_sales
after insert,update
as 
begin
    update p
    set p.p_total_sale = p.p_total_sale + 
        (select isnull(sum(s.s_price), 0) 
         from inserted s 
         where s.p_id = p.p_id)
    from products p
    where p.p_id in (select p_id from inserted)
end
go

insert into TbL_Sales(S_ID,P_Id,S_Date,S_Price,Customer)
values(6,1,'2008/3/15',400,'Marco')

Select * from Products
Select * from TbL_Sales




