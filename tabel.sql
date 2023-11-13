create table pembeli(
	id int (5) not null auto_increment primary key,
    alamat varchar(255) not null,
    nama varchar(255) not null,
    email varchar(255) not null,
    no_telpon varchar(255) not null
);

CREATE TABLE produk(
    id INT (5) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nama_produk VARCHAR(255) NOT NULL,
    harga varchar(255) null,
    stok INT NOT NULL
);

create table pesanan(
	id int (5) not null auto_increment primary key,
    id_pembeli int not null,
    foreign key (id_pembeli) references pembeli(id),
    status_pesanan varchar(255) not null,
    tanggal_pemesanan date not null
);

create table detail_pesanan(
	id int (5) not null auto_increment primary key,
    id_pesanan int not null,
    id_produk int not null,
    foreign key (id_pesanan) references pesanan(id),
    foreign key (id_produk) references produk(id),
    jumlah int not null
);

create table produk_kategori(
	id int (5) not null auto_increment primary key,
    id_produk int not null,
    id_kategori int not null,
    foreign key (id_produk) references produk(id),
    foreign key (id_kategori) references kategori(id)
);

create table kategori(
	id int (5) not null auto_increment primary key,
    nama_kategori varchar(255) not null
);

create table pembayaran(
	id int (5) not null auto_increment primary key,
    id_pesanan int not null,
    foreign key (id_pesanan) references pesanan(id),
    metode_pembayaran varchar(255) not null,
    total_pembayaran varchar(255) not null,
    tanggal_pembayaran date not null
);

create table pengiriman(
	id int (5) not null auto_increment primary key,
    id_pesanan int not null,
    foreign key (id_pesanan) references pesanan(id),
    alamat_pengiriman varchar(255) not null,
    metode_pengiriman varchar(255) not null
);