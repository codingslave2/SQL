use javaweb;

-- product table

create table product(
	p_id varchar(10) primary key,
    p_name varchar(30),
    p_unitPrice integer,
    p_description text,
    p_category varchar(20),
    p_manufacturer varchar(20),
    p_unitsInStork long,
    p_condition varchar(20),
    p_productImage varchar(20)

);