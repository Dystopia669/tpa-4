-- query melihat 1 pelanggan membeli 3 barang yang berbeda --
select * from orders
select member.id_member, member.nama_member, orders.id_order, orders.jumlah from member, 
orders where member.id_member=orders.id_member order by member.id_member  


-- query melihat item yang paling banyak dibeli atau dipesan --
select * from orders
select top 3 id_product, sum(jumlah) as 'jumlah dibeli' from orders group by id_product 
order by 'jumlah dibeli' desc

-- query melihat stok terbanyak -- 
select * from product
select nama_product as 'nama product', max(stock) as 'stock terbanyak' from product 
group by nama_product order by 'stock terbanyak' desc

-- query melihat Nominal rata-rata transaksi yang dilakukan oleh pelanggan dalam 1 bulan terakhir yaitu bulan november dan status pembayaran 'sudah membayar' --
select * from orders
select * from detail_order
select sum(cast(total_harga as float)) as 'rata rata penjualan' from detail_order 
where tgl_order between '2022-11-01' and '2022-11-30' and status_pembayaran = 'sudah membayar'