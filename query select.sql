-- query mengambil data dari table -- 

-- 1. ambil data dari table member --
select * from member where alamat='bantul'

-- 2. ambil data dari table product --
select * from product

select top 3 nama_product as 'nama product', max(stock) as 'stock terbanyak' from product 
group by nama_product order by 'stock terbanyak' desc

-- 3. ambil data dari table product dan orders --
select * from orders
select * from product
select product.id_product 'id product', product.nama_product as 'nama product' , sum(jumlah) as 'jumlah yang telah dipesan' from orders 
right join product on orders.id_product = product.id_product where jumlah >= 1 group by product.id_product, nama_product

-- 4. ambil data dari table detail orders --
select * from detail_order
select * from orders

select detail_order.id_orderDetail, detail_order.total_harga , detail_order.status_pembayaran from detail_order right join orders 
on orders.id_order = detail_order.id_orderDetail and orders.id_product = orders.id_product 
group by id_orderDetail, total_harga, status_pembayaran 

select orders.id_order, orders.id_member from orders right join detail_order on detail_order.id_orderDetail = orders.id_order group by orders.id_order, orders.id_member, detail_order.status_pembayaran