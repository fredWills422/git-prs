-- inserts
insert into User(ID, UserName, Password, FirstName, LastName, PhoneNumber, Email, IsReveiwer, IsAdmin) values( 1, 'LaGuard27', 'CrOsses71', 'Laguardian', 'Cross', '513-924-8127', 'la71guard71@gmail.com', 0, 1);
insert into User(ID, UserName, Password, FirstName, LastName, PhoneNumber, Email, IsReveiwer, IsAdmin) values( 2, 'Amallah02', 'CrOsses13', 'Amallah', 'Cross', '513-924-8127', 'lala13@gmail.com', 1, 0);
insert into User(ID, UserName, Password, FirstName, LastName, PhoneNumber, Email, IsReveiwer, IsAdmin) values( 3, 'Brad21', 'Bshaw21', 'Brad', 'Shaw', '513-462-2967', 'bradshaw@gmail.com', 1, 0);
insert into User(ID, UserName, Password, FirstName, LastName, PhoneNumber, Email, IsReveiwer, IsAdmin) values( 4, 'Brandy44', 'bSand34', 'Brandy', 'Sanders', '513-537-7032', 'sanderb@gmail.com', 1, 0);

insert Vendor(ID, Code, Name, Address, City, State, Zip, PhoneNumber, Email) values( 1, '4536-DCK01', 'HomeDepot', '4909InternationalDrive', 'Cincinnati', 'OH', '45231', '513-735-1644', 'homedepotway@gmail.com');
insert Vendor(ID, Code, Name, Address, City, State, Zip, PhoneNumber, Email) values( 2, '4536-DCK02', 'Lowes', '8239CityCircleRoad', 'Cincinnati', 'OH', '45337', '513-935-2642', 'lowes19@gmail.com');
insert Vendor(ID, Code, Name, Address, City, State, Zip, PhoneNumber, Email) values( 3, '4536-DCK03', 'Menards', '1760HuntersLane', 'Louisville', 'KY', '40297', '502-935-1644', 'menards@gmail.com');

insert Product( ID, VendorID, PartNumber, Name, Price, Unit, PhotoPath) values( 1, 1, "01PTTimber-4412", 'PressureTreatedTimber12Foot4*4', 20.00, 1, null);
insert Product( ID, VendorID, PartNumber, Name, Price, Unit, PhotoPath) values( 2, 1, "01PTPineLumber-4412", 'PressureTreatedPineLumber12Foot4*4', 25.00, 1, null);
insert Product( ID, VendorID, PartNumber, Name, Price, Unit, PhotoPath) values( 3, 2, "02PTPineLumber-4412", 'PressureTreatedPineLumber12Foot4*4', 22.00, 1, null);
insert Product( ID, VendorID, PartNumber, Name, Price, Unit, PhotoPath) values( 4, 3, "03PTTimber-4412", 'PressureTreatedTimber12Foot4*4', 18.00, 1, null);
-- inserts

select * from user;
select * from vendor;
select * from product;

