create database belanja;
use belanja;
select * from pengiriman;

show tables;

drop table pengiriman;

alter table produk
drop harga;

alter table produk
add harga varchar(255);