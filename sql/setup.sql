drop database if exists pc2;

create database pc2;

use pc2;

create table teams(
	team_id varchar(30) primary key,
    team varchar(30) not null,
    department varchar(30) not null
);

create table tickets(
	t_id int primary key,
    month varchar(30) not null,
    team_id varchar(30) not null,
    channel varchar(30) not null,
    resolution_hours int not null,
    satisfaction int not null,
    foreign key (team_id) references teams(team_id)
);

insert into teams (team_id,team,department) values
("T1","AccountCare","Service"),
("T2","BillingHelp","Service"),
("T3","AppSupport","Technical"),
("T4","DeviceHelp","Technical");


insert into tickets (t_id,month,team_id,channel,resolution_hours,satisfaction) values
(1,"Jan","T1","Email",12,4),
(2,"Jan","T2","Chat",28,3),
(3,"Jan","T3","Phone",36,2),
(4,"Jan","T4","Email",20,4),
(5,"Feb","T1","Chat",8,5),
(6,"Feb","T2","Phone",30,3),
(7,"Feb","T3","Email",18,4),
(8,"Feb","T4","Chat",40,2),
(9,"Mar","T1","Phone",16,4),
(10,"Mar","T2","Email",22,4),
(11,"Mar","T3","Chat",32,3),
(12,"Mar","T4","Phone",24,5); 

select * from teams;

select * from tickets;

