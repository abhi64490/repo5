use hello
select * from Table_2
insert into Table_2 values ('E',1),('E',2),('E',3),('E',3),('F',1),('F',2),('F',1),('G',1),('G',2)


select A,B into #temp_table from Table_2

select * from #temp_table

select A,B , count(A) as cnt from Table_2 group by A,B having count(*) >1

select * from(
select row_number() over( order by ) s, A,B, row_number() over (PARTITION BY A,B order by A,B) as cnt from Table_2) as t where t.s%2=0



select * from Table_1

insert into Table_1 values (null,'A','cat'),(2,null,'dog'),(3,'B','fruit'),(4,'c','beans'),(null,null,'apple')

select * from (select * from Table_1 where A is null) as t where B is null
select * from Table_1 where A is null and b is null


#### Procedures

### Create_Procedure

create Procedure MyProcedure2
As
Begin
Select * from Table_2
End

Execute MyProcedure2

Alter procedure myprocedure 2
@B int
As
Begin

if @B>1
Begin
select * from Table_2 where B=@B
End
Else
begin
select * from Table_2
End
End
 Execute myprocedure 2


 ## Drop_Procedure

 drop procedure myprocedure2


 select * from Table_1

 alter procedure ins_upd_dlt (@A int,
							  @B varchar(10),
							  @C varchar(10))
							  @statementtype varchar(20))
AS
begin
 if @statementype= 'Insert'
 begin
 insert into Table_1 (A,
					  B,
					  C)
			values (@A
					@B,
					@C)
		end
		if @statementType= 'Select'
		begin
		select * from Table_1
		end

		if @statementType= 'update'

		begin
		update Table_1
		set A=@A,
			B=@B,
			C=@C,
			where A is null
		end
	 ELSE IF @StatementType = 'Delete'
        BEGIN
            DELETE FROM Table_1
            WHERE  A is null
        END
  END


  --- Views:
  select * from Table_1

  select * from Table_2

  create view T1 as
  select * from Table_1

  select * from T1
  update T1 set c='view' where A=2
  select * from T1

  --- The changes made in view T1 is reflected in base table_1

 create view j as
 select t1.A,t2.B from Table_1 t1 inner join Table_2 t2 on t1.A=t2.B 

 select * from j

 update j set B=0 where A=2

 --- changes1
 --- Changes2
 -- changes3
 ---- changes4
 --- changes5
 --- changes6-7
--- changes9
--- changes10
