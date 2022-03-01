Select * from student;
select * from foodMenuTB;
Go;
sp_help foodMenuTB
Go
alter Table student
alter column photo image;
Go
Create proc sp_EmpDataInsert

@Id int,
@Food varchar(50),
@Items varchar(150),
@price money
as
Begin
	insert into foodMenuTB
	values(@Id,@Food,@Items,@price)
end

select * from student;
Insert into student(ID,Name,Fee,joindate,photo) 
values(12','ashadchy.cox@gmail.com','123456','System.Web.UI.WebControls.TextBox','Studentpic1200px-University_of_Chittagong_logo.svg.png')
Sp_help feesdetails
Select *
select * from feesdetails
sp_help result
select * from student

sp_help result
select * from result



