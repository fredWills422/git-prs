select * from user;
select * from vendor;
select * from product;

select VendorID, Name , sum(Price) as TotalSpentAtVendor
	from product
	group by vendorID;
    
select FirstName, LastName, IsReveiwer
	from user;
    
select FirstName, LastName, IsAdmin
	from user;
    
select count(State) 
	from vendor
	where State = 'OH';

select count(State) 
	from vendor
	where State = 'KY';
    
select max(Price)
	from product;
    
select min(Price)
	from product;
    
select avg(Price)
	from product;
	