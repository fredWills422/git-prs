drop database if exists prs;
create database prs;
use prs;

create table User(
ID                     int                             primary key auto_increment,
UserName               varchar    (20)                 not null,
CONSTRAINT uname UNIQUE(ID, UserName),
Password               varchar    (10)                 not null,
FirstName              varchar    (20)                 not null,
LastName               varchar    (20)                 not null,
PhoneNumber            varchar    (12)                 not null,
Email                  varchar    (75)                 not null,
IsReveiwer             tinyint    (1)                  not null,
IsAdmin                tinyint    (1)                  not null
);

create table Vendor(
ID                    int                             primary key auto_increment,
Code                  varchar     (10)                not null,
CONSTRAINT vcode UNIQUE(ID, Code),
Name                  varchar     (255)               not null,
Address               varchar     (255)               not null,
City                  varchar     (255)               not null,
State                 varchar     (2)                 not null,
Zip                   varchar     (5)                 not null,
PhoneNumber           varchar     (12)                not null,
Email                 varchar     (100)               not null
);

create table PurchaseRequest(
ID                    int                             primary key auto_increment,
UserID                int                             not null,
foreign key (UserID) references User(ID),
Description           varchar     (100)               not null,
Justification         varchar     (255)               not null,
DateNeeded            date                            not null,
DeliveryMode          varchar     (25)                not null,
Status                varchar     (20)                not null,
Total                 decimal     (10,2)              not null,
SubmittedDate         datetime                        not null,
ReasonForRejection    varchar     (100)               
);

create table Product (
ID                   int                              primary key auto_increment,
VendorID             int                              not null,
foreign key (VendorID) references Vendor(ID),
PartNumber           varchar      (50)                not null,
constraint vendor_part unique (VendorID, PartNumber),
Name                 varchar      (150)               not null,
Price                decimal      (10,2)              not null,
Unit                 varchar      (255),
PhotoPath            varchar      (255)
);

create table PurchaseRequestLineItem(
ID                   int                              primary key auto_increment,
PurchaseRequestID    int,
foreign key (PurchaseRequestID) references purchaserequest(ID),
ProductID            int,
foreign key (ProductID) references Product(ID),
CONSTRAINT req_pdt UNIQUE(PurchaseRequestID, ProductID),
Quantity             int
);

