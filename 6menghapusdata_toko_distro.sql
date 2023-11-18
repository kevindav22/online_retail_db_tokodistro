--Cek Paling Bawah--

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


-- data tabel Kategori Produk
INSERT INTO kategori_produk (id_kategori, nama_kategori, deskripsi_kategori)
VALUES
    (1, 'Kaos Pria', 'Kaos untuk pria'),
    (2, 'Kaos Wanita', 'Kaos untuk wanita'),
    (3, 'Topi', 'Topi dengan berbagai desain'),
    (4, 'Aksesoris', 'Aksesoris lainnya'),
	(5, 'Sepatu', 'Bekas berkualitas'),
	(6, 'Hoodie', 'Hoodie Polos'),
	(7, 'Celana Bahan', 'Berkualitas nyaman dipakai'),
	(8, 'Jeans', 'Motif kekinian'),
	(9, 'boxer', 'Ukuran universal'),
	(10, 'Sandal', 'Semua macam sandal');

-- data tabel Produk
INSERT INTO produk (id_produk, nama_produk, harga, jumlah_stok, deskripsi_produk, id_kategori)
VALUES
    (1, 'Kaos Polos', 30.000, 100, 'Kaos polos berkualitas', 1),
	(2, 'Jersey Futsal', 150.000, 59, 'Jersey Futsal Yang nyaman dipakai ketika berketingat', 1),
	(3, 'Kaos Custom', 85.000, 99, 'Bebas Request desain sesuai dengan permintaan anda', 1),
	(4, 'Kaos Promo', 100.000, 87, 'Desain acak kualitas distro isi 5 pcs',1),
	(5, 'Rwndvsn', 55.000, 45, 'Kaos original RownDivision promo',1),
	(6, 'Kaos Motif Bunga', 75.000, 50, 'Kaos dengan motif bunga cantik', 2),
	(7, 'Tanktop', 65.000, 50, 'tanktop dengan model masa kini', 2),
    (8, 'Kaos lengah panjang', 75.000, 50, 'model lengan panjang muslimah', 2),
    (9, 'Topi Trucker', 30.000, 75, 'Topi dengan jaring di bagian belakang', 3),
	(10, 'Topi Snapback', 25.000, 50, 'Topi dengan kancing snap di bagian belakang', 3),
	(11, 'Topi Beanie', 35.000, 30, 'Topi hangat dengan model beanie', 3),
	(12, 'Topi Copet', 35.000, 30, 'Topi mirip yang dipakai oleh pencopet ', 3),
    (13, 'Gelang Kulit', 15.000, 200, 'Gelang dari bahan kulit', 4),
    (14, 'Kalung Berantai', 20.000, 100, 'Kalung dengan rantai panjang', 4),
    (15, 'Anting-anting Stud', 18.000, 150, 'Anting-anting dengan desain stud', 4),
    (16, 'Gelang Manik', 12.000, 120, 'Gelang dengan manik-manik warna-warni', 4),
	(17, 'Kemeja Flanel', 70.000, 25, 'Kemeja flanel dengan motif kotak-kotak', 1),
	(18, 'Sepatu Ventela', 150.000, 55, 'Sepatu Bekas Like New uk 42', 5),
	(19, 'Sepatu Adidas', 250.000, 11, 'Adidas Original Made Vietnam', 5),
	(20, 'Hodie Hitam', 50.000, 95, 'Ukuran L nyaman dipakai', 6),
	(21, 'Celana Nyinom', 100.000, 35, 'Celana karang taruna', 7),
	(22, 'Jeans', 180.000, 55, 'Celana Jeans motif sobek sobek', 8),
	(23, 'Boxer', 10.000, 98, 'Untuk dipakai sehari hari', 9),
	(24, 'Sandal', 35.000, 75, 'Sandal Swallow', 10);


-- data tabel Pelanggan
INSERT INTO pelanggan (id_pelanggan, nama_pelanggan, email, alamat_pelanggan, nomor_telp)
VALUES
    (1, 'John Doe', 'john@gmail.com', 'Jalan ABC No. 123', '1234567890'),
    (2, 'Jane Sopoki', 'jane@gmail.com', 'Jalan XYZ No. 456', '0987654321'),
    (3, 'Nusron Nababan', 'michael@gmail.com', 'Jalan DEF No. 789', '1122334455'),
    (4, 'Emily Wicaksono', 'emily@gmail.com', 'Jalan GHI No. 1011', '5566778899'),
    (5, 'William Butar', 'william@gmail.com', 'Jalan JKL No. 1213', '9900112233'),
    (6, 'Sophia Shopi', 'sophia@gmail.com', 'Jalan MNO No. 1415', '3344556677'),
    (7, 'James Widodo', 'james@gmail.com', 'Jalan PQR No. 1617', '8899001122'),
    (8, 'Olivia Synta', 'olivia@gmail.com', 'Jalan STU No. 1819', '2233445566'),
    (9, 'Putra david', 'ethan@gmail.com', 'Jalan VWX No. 2021', '7788990011'),
    (10, 'Nandawati', 'ava@gmail.com', 'Jalan YZA No. 2223', '1122334455');

-- data tabel Pesanan
INSERT INTO pesanan (id_pesanan, id_pelanggan, tanggal_pesanan, status_pesanan, total_harga)
VALUES
    (1, 4, '2023-11-13', 'Diproses', 100.000),
    (2, 2, '2023-11-09', 'Selesai', 150.000),
    (3, 1, '2023-11-15', 'Diproses', 55.000),
    (4, 3, '2023-11-13', 'Diproses', 85.000),
    (5, 7, '2023-11-17', 'Selesai', 20.000),
    (6, 6, '2023-11-27', 'Selesai', 50.000),
	(7, 9, '2023-11-23', 'Diproses', 65.000),
    (8, 5, '2023-11-03', 'Selesai', 55.000),
    (9, 8, '2023-11-21', 'Diproses', 750.000),
	(10, 10, '2023-11-11', 'Selesai', 150.000),
	(11, 10, '2023-11-11', 'Selesai', 35.000);

-- data tabel Detail Pesanan
INSERT INTO detail_pesanan (id_detail_pesanan, id_pesanan, id_produk, jumlah, subtotal)
VALUES
    (1, 7, 1, 2, 65.000),
    (2, 5, 14, 1, 20.000),
    (3, 1, 21, 1, 100.000),
	(4, 8, 4, 2, 55.000),
    (5, 10, 2, 1, 150.000),
    (6, 3, 5, 3, 55.000);

-- Menghapus data di tabel
DELETE FROM pesanan WHERE id_pesanan = 11;
