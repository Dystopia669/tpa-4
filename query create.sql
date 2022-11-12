CREATE DATABASE toko_retail
ON PRIMARY (
NAME=toko_retail,
FILENAME = 'D:\studi independent\tpa-4\toko_retail.mdf',
SIZE=10,
MAXSIZE=50,
FILEGROWTH=2)
LOG ON(
NAME=toko_retail_log,
FILENAME='D:\studi independent\tpa-4\toko_retail_log.ldf',
SIZE=3,
MAXSIZE=20,
FILEGROWTH=1)

use toko_retail


-- Membuat table member --
create table member (
id_member int identity(1,1) primary key not null,
nama_member varchar(200) not null,
alamat varchar(200) not null,
nohp varchar(20) not null
)

-- cek table member --

select * from member


-- Membuat table product -- 
create table product (
id_product int identity(1,1) primary key not null,
nama_product varchar(200) not null,
harga varchar(200) not null,
stock int not null
)

-- cek table product --
select * from product

-- membuat table order --
create table orders (
id_order int identity(1,1) primary key not null,
id_member int not null foreign key references member(id_member),
id_product int not null foreign key references product(id_product),
jumlah int not null
)

-- cek table orders --
select * from orders

-- membuat table detail order --
create table detail_order (
id_orderDetail int not null foreign key references orders(id_order),
id_product int not null foreign key references product(id_product),
tgl_order datetime not null,
total_harga varchar(200) not null,
status_pembayaran varchar(20) not null check (status_pembayaran in('belum dibayar', 'sudah membayar'))
)

-- cek table detail order --
select * from detail_order

