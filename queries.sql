-- write your queries here

select * 
    from  owners full 
    join  vehicles 
    on    owners.id = owner_id;

select first_name, last_name, count(vehicles.owner_id) as count 
    from      owners full 
    join      vehicles 
    on        owners.id = owner_id
    group by  owners.id  
    having    count(vehicles.owner_id) > 0 
    order by  count;

select first_name, last_name, round(avg(price)) as avg_price, count(vehicles.owner_id) as count 
    from      owners full 
    join      vehicles 
    on        owners.id = owner_id
    group by  owners.id  
    having    avg(price) > 10000 
    order by  count desc;



