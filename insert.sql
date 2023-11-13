insert into produk (nama_produk, harga, stok) values
("samsung galaxy", "Rp.2jt", "5"),
("minyak goreng", "Rp.15.000", "100"),
("sendok", "Rp.2.000", "1000");

insert into pembeli(alamat, nama, email, no_telpon) values
("karang rejo", "reni", "reni@email.com", "085656723110"),
("malang", "zaki", "zaki@email.com", "086531777931"),
("madura", "cecil", "cecil@email.com", "089542769021");

insert into pesanan(id_pembeli, status_pesanan, tanggal_pemesanan) values
(1,"sedang dikirim", "2023-11-12"),
(2,"masih dalam packing", "2023-11-11"),
(3,"sudah sampai", "2023-11-10");

insert into detail_pesanan(id_pesanan, id_produk, jumlah) values
("1", "1", "1"),
("2", "2", "3"),
("3", "3", "10");

insert into produk_kategori(id_produk, id_kategori) values
(1,1),
(2,3),
(3,2);

insert into kategori(nama_kategori) values
("Barang Elektronik"),
("alat dapur"),
("bahan pokok");

insert into pembayaran(id_pesanan, metode_pembayaran, total_pembayaran, tanggal_pembayaran) values
(1, "kartu kredit BNI", "Rp.2jt","2023-11-11"),
(2, "E wallet dana", "Rp.45.000","2023-11-10"),
(3, "cash", "Rp.20.000","2023-11-10");

insert into pengiriman(id_pesanan, alamat_pengiriman, metode_pengiriman) values
(1,"karang rejo", "si cepat kilat"),
(2,"malang", "standar"),
(3,"madura", "paket hemat");
