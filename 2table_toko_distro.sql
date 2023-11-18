--membuat database--
CREATE DATABASE toko_distro;

-- tabel Kategori Produk
CREATE TABLE kategori_produkk (
    id_kategori INT PRIMARY KEY,
    nama_kategori VARCHAR(255),
    deskripsi_kategori TEXT
);

-- tabel Produk
CREATE TABLE produkk (
    id_produk INT PRIMARY KEY,
    nama_produk VARCHAR(255),
    harga DECIMAL(10, 2),
    jumlah_stok INT,
    deskripsi_produk TEXT,
    id_kategori INT,
    FOREIGN KEY (id_kategori) REFERENCES kategori_produk(id_kategori)
);

-- tabel Detail Pesanan
CREATE TABLE detail_pesanan (
    id_detail_pesanan INT PRIMARY KEY,
    id_pesanan INT,
    id_produk INT,
    jumlah INT,
    subtotal DECIMAL(10, 2),
    FOREIGN KEY (id_pesanan) REFERENCES pesanan(id_pesanan),
    FOREIGN KEY (id_produk) REFERENCES produk(id_produk)
);

-- Membuat tabel Pesanan
CREATE TABLE pesanan (
    id_pesanan INT PRIMARY KEY,
    id_pelanggan INT,
    tanggal_pesanan DATE,
    status_pesanan VARCHAR(50),
    total_harga DECIMAL(10, 2),
    FOREIGN KEY (id_pelanggan) REFERENCES pelanggan(id_pelanggan)
);


-- Membuat tabel Pelanggan
CREATE TABLE pelanggan (
    id_pelanggan INT PRIMARY KEY,
    nama_pelanggan VARCHAR(255),
    email VARCHAR(255),
    alamat_pelanggan TEXT,
    nomor_telp VARCHAR(15)
);