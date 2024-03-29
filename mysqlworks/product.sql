use javaweb;

-- product table

CREATE TABLE product(
	p_id	VARCHAR(10) PRIMARY KEY,
    p_name  VARCHAR(30),
    p_unitPrice INTEGER,
    p_description TEXT,
    p_category  VARCHAR(20),
    p_manufacturer VARCHAR(20),
    p_unitsInStock LONG,
    p_condition VARCHAR(20),
    p_productImage VARCHAR(20)
);

-- 상품 추가
INSERT INTO product VALUES ('P1234', 'iPhone 6s', 1200000, '1334X750 Renia HD Display',
			'Smart Phone', 'Apple', 1000, 'New', 'P1234.png');

select * from product;

drop table product;