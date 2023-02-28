create table driver(driver_id varchar(10) primary key, fullname varchar(100), age int);
create table company(company_name varchar(30) primary key, owned_busses int);
create table bus_station(station_id varchar(10) primary key, location varchar(30), station_name varchar(30));
create table routee (route_id varchar(10) primary key, path_length varchar(10),initial_station varchar(30),last_station varchar(30),station_id varchar(10) foreign key references bus_station(station_id));
create table smart_ticket(ticket_id varchar(10) primary key, expiration_date varchar(30),balance int);
create table bus(plate_number varchar(10) primary key, model varchar(30), passenger_capacity varchar(10), route_id varchar(10) foreign key references routee(route_id), driver_id varchar(10) foreign key references driver(driver_id), company_name varchar(30) foreign key references company(company_name));
create table passenger(passenger_id varchar(10) primary key, fullname varchar(30), ticket_id varchar(10) foreign key references smart_ticket(ticket_id), plate_number varchar(10) foreign key references bus(plate_number));


insert into routee values(123456,'10km','Viyadük','Akaretler',123456);
insert into routee values(123457,'10km','Akaretler','Tarlabaşı',123458);
insert into routee values(123458,'10km','Viyadük','Taksim',123457);

insert into smart_ticket values(123456,'10 May 2023','50tl');
insert into smart_ticket values(123457,'24 Jan 2023','50tl');
insert into smart_ticket values(123458,'1 Dec 2023','50tl');

insert into bus values('27 E 5710','Mercedes',64,123456,12345689,'Kaz Tur');
insert into bus values('27 E 5710','Mercedes',64,123457,123456781,'Yıldız Tur');
insert into bus values('27 E 5710','Mercedes',64,123458,123456782,'Şahba Tur');

insert into passenger values('123456','Ali Dirim',123456,'57 ADC 01');
insert into passenger values('123457','Baran Alp',123458,'31 V 1631');
insert into passenger values('123458','Ahmet Kural',123457,'27 E 5710');

insert into bus_station values(123456,'Mecidiyeköy','Viyadük');
insert into bus_station values(123457,'Beşiktaş','Akaretler');
insert into bus_station values(123458,'Taksim','Tarlabaşı');

insert into company(company_name,owned_pusses) values('Yıldız Tur ',12);
insert into company(company_name,owned_pusses) values('Şahba Tur ',26);
insert into company(company_name,owned_pusses) values('Kaz Tur ',5);

