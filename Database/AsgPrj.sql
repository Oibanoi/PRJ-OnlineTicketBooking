create database [PRJSU2022]

use [PRJSU2022]
create table [User](
UserID int primary key,
[name] varchar(50),
email varchar(50),
sex binary,
[address] varchar(50),
[phonenumber] varchar(20)
);

create table [Movie](
FilmID int primary key,
HotLevel int ,
Information nvarchar(500),
Price float,
Publish_date date,
Duration float
);

create table [Schedule](
[SID] int primary key,
FilmID int,
StartTime varchar(20),
EndTime varchar(20),
foreign key (FilmID) references [Movie](FilmID)
);

create table [Room](
RoomID int primary key,
[Status] binary
);

create table [seat](
RoomID int,
foreign key (RoomID) references [Room](RoomID),
SeatID int primary key
);

create table [seatSchedule](
[SID] int,
SeatID int,
foreign key (SeatID) references [seat](SeatID),
foreign key ([SID]) references [Schedule]([SID]),
[Status] binary,
primary key([SID],SeatID)
);

create table [cart](
[SID] int,
SeatID int,
quantity int,
UserID int,
foreign key ([SID],SeatID) references [seatSchedule]([SID],SeatID),
foreign key (UserID) references [User](UserID),
primary key([SID],SeatID,UserID)
);