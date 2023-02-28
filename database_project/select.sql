select fullname,balance from smart_ticket k1 inner join passanger k2 on k1.ticket_id=k2.ticket_id where balance>30
select company_name from bus k1 inner join driver k2 on k1.driver_id=k2.driver_id where fullname='Murat Karateke'

select fullname from driver where driver_id in (
Select driver_id FROM company k1 inner join bus k2 on k1.company_name= k2.company_name where owned_pusses>10)

select plate_number from bus where route_id in (
select route_id from routee where initial_station='Viyadük')

select fullname from passanger k1 inner join smart_ticket k2 on k1.ticket_id=k2.ticket_id where balance >30  union select fullname  from driver
select plate_number from bus where passanger_capacity>50 intersect select plate_number from bus where model='Mercedes'

select count(balance) from smart_ticket where balance>20
select avg(owned_busses) from company where owned_busses>10