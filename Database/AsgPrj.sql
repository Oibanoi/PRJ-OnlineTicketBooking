create database [PRJSU2022]

use [PRJSU2022]
drop table [User]
create table [User](
UserID int primary key identity,
[password] varchar(20),
[name] varchar(50),
email varchar(50),
sex bit,
[address] varchar(50),
[phonenumber] varchar(20),
[Role] int
);
drop table [Movie]
create table [Movie](
FilmID nvarchar(2000) primary key,
HotLevel int ,
Information nvarchar(500),
Price float,
Publish_date date,
Duration float,
[status] nvarchar(20),
[image] nvarchar(50)
);
drop table [Schedule]
create table [Schedule](
[SID] int primary key identity,
[day] date,
StartTime varchar(20),
EndTime varchar(20),
);
drop table [Movie-Schedule]
create table [Movie-Schedule](
FilmID nvarchar(2000),
[SID] int,
foreign key (FilmID) references [Movie](FilmID),
foreign key ([SID]) references [Schedule]([SID]),
primary key(FilmID,[SID])
);
drop table [seat]
create table [seat](
Position nvarchar(10) primary key,
);
drop table [seatSchedule]
create table [seatSchedule](
[SID] int,
Position nvarchar(10),
FilmID nvarchar(2000),
foreign key (FilmID) references [Movie](FilmID),
foreign key (Position) references [seat](Position),
foreign key ([SID]) references [Schedule]([SID]),
[Status] bit,
primary key([SID],Position,FilmID)
);
drop table [cart]
create table [cart](
[SID] int,
SeatID int,
quantity int,
UserID int,
foreign key ([SID],SeatID) references [seatSchedule]([SID],SeatID),
foreign key (UserID) references [User](UserID),
primary key([SID],SeatID,UserID)
);
select * from [User] where name='admin' and password='admin'
drop table [cart]
create table [cart](
OID int identity primary key,
UserID int,
FilmID nvarchar(2000),
[SID] int,
Position nvarchar(10),
price float
);

create table [bill](
BID int identity primary key,
UserID int,
FilmID nvarchar(2000),
[SID] int,
Position nvarchar(10),
price float,
[time] date
);