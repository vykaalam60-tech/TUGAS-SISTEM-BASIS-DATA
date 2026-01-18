CREATE DATABASE nota_indomaret;
USE nota_indomaret;

CREATE TABLE kasir (
    id_kasir INT AUTO_INCREMENT PRIMARY KEY,
    nama_kasir VARCHAR(100) NOT NULL,
    no_telp VARCHAR(15),
    alamat TEXT
);

CREATE TABLE items (
    id_items INT AUTO_INCREMENT PRIMARY KEY,
    nama_items VARCHAR(100) NOT NULL,
    harga INT NOT NULL,
    stok INT NOT NULL
);

CREATE TABLE transaksi (
    id_transaksi INT AUTO_INCREMENT PRIMARY KEY,
    id_kasir INT NOT NULL,
    tanggal DATETIME NOT NULL,
    disc INT DEFAULT 0,
    ppn INT DEFAULT 0,
    total INT NOT NULL,
    FOREIGN KEY (id_kasir) REFERENCES kasir(id_kasir)
);

CREATE TABLE detail_transaksi (
    id_detail INT AUTO_INCREMENT PRIMARY KEY,
    id_transaksi INT NOT NULL,
    id_items INT NOT NULL,
    kuantitas INT NOT NULL,
    subtotal INT NOT NULL,
    FOREIGN KEY (id_transaksi) REFERENCES transaksi(id_transaksi),
    FOREIGN KEY (id_items) REFERENCES items(id_items)
);

INSERT INTO kasir (nama_kasir, no_telp, alamat) VALUES
('Abdi', '081234567890', 'Jl. semen romo No.1'),
('damar', '081298765432', 'Jl. raden said No.10'),
('dinda', '081377788899', 'Jl. Ahmad Yani No.5');

INSERT INTO items (nama_items, harga, stok) VALUES
('Indomie Goreng', 3500, 100),
('Aqua 600ml', 4000, 80),
('Chitato', 7500, 50),
('Teh Botol', 5000, 60);

INSERT INTO transaksi (id_kasir, tanggal, disc, ppn, total) VALUES
(1, '2026-01-15 10:15:00', 1000, 1100, 20100),
(2, '2026-01-15 11:30:00', 0, 1500, 16500),
(1, '2026-01-16 09:00:00', 500, 800, 10300);

INSERT INTO detail_transaksi (id_transaksi, id_items, kuantitas, subtotal) VALUES
(1, 1, 3, 10500),
(1, 2, 2, 8000),
(2, 3, 2, 15000),
(3, 4, 2, 10000);

-- join
SELECT 
    t.id_transaksi,
    k.nama_kasir,
    i.nama_items,
    d.kuantitas,
    d.subtotal,
    t.tanggal
FROM detail_transaksi d
JOIN transaksi t ON d.id_transaksi = t.id_transaksi
JOIN kasir k ON t.id_kasir = k.id_kasir
JOIN items i ON d.id_items = i.id_items;

-- left join

SELECT 
    k.nama_kasir,
    t.id_transaksi,
    t.tanggal,
    t.total
FROM kasir k
LEFT JOIN transaksi t ON k.id_kasir = t.id_kasir;

-- group by

SELECT 
    k.nama_kasir,
    SUM(t.total) AS total_penjualan
FROM transaksi t
JOIN kasir k ON t.id_kasir = k.id_kasir
GROUP BY k.nama_kasir;

SELECT 
    i.nama_items,
    SUM(d.kuantitas) AS total_terjual
FROM detail_transaksi d
JOIN items i ON d.id_items = i.id_items
GROUP BY i.nama_items;

-- having 

SELECT nama_items, count(stok) AS stok
FROM items
GROUP BY id_items, nama_items
HAVING count(stok) < 20;
