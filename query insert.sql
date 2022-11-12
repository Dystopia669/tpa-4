-- insert into member --

select * from member

insert into member values
('member 1', 'bantul', '13984198'),
('member 2', 'sleman', '11324523'),
('member 3', 'gunung kidul', '27723234'),
('member 4', 'klaten', '55134134'),
('member 5', 'solo', '183469134')
 


-- inser into product --
select * from product

insert into product values
('t-shirt 1', '17500', 4),
('t-shirt 2', '19500', 10),
('t-shirt 3', '21000', 16),
('t-shirt 4', '65000', 23),
('t-shirt 5', '80000', 43),
('hoodie 1','350000', 13),
('hoodie 2','365000', 19),
('hoodie 3','370000', 27),
('hoodie 4','375000', 25),
('hoodie 5','380000', 18)

-- insert into orders --
select * from orders

insert into orders values
('1','3',1),
('4','2',5),
('2','1',2),
('2','2',3),
('2','5',1)

-- insert into detail_order --
select * from orders
select * from detail_order

insert into detail_order values
('1','3','2022-11-10 11:56:20', '21000', 'belum dibayar'),
('4','2','2022-11-10 21:38:10', '97500', 'sudah membayar'),
('2','1','2022-11-10 15:25:19', '35000', 'sudah membayar'),
('2','5','2022-11-09 09:35:49', '80000', 'sudah membayar'),
('2','2','2022-10-11 18:34:17','58500','belum dibayar'),
('4','6','2022-09-12 12:14:15', '')








