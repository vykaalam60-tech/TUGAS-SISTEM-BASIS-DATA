<img width="1422" height="1422" alt="image" src="https://github.com/user-attachments/assets/d293593a-1c69-402e-9f14-f96da7750328" />
💨 NOTA INDOMARET
Database TRANSAKSI NOTA INDOMARET
Proyek Mata Kuliah Pemrograman Basis Data


## 📌 Deskripsi Proyek

Proyek ini merupakan perancangan dan implementasi **Database Sistem Transaksi Indomaret** yang bertujuan untuk mengelola data transaksi penjualan secara terstruktur, akurat, dan terintegrasi. Sistem database ini dirancang untuk mendukung proses operasional kasir, pengelolaan data barang, pencatatan transaksi, serta pelaporan keuangan dan audit data.

Database ini disusun menggunakan pendekatan **relasional** sehingga setiap data saling terhubung dan mudah ditelusuri.

---

## 🗂️ Struktur Database

Struktur database terdiri dari beberapa tabel utama, yaitu:

* **Kasir / Operator**
  Menyimpan data petugas kasir yang melakukan transaksi.
* **Items / Barang**
  Menyimpan informasi barang seperti nama, harga, dan stok.
* **Transaksi**
  Menyimpan data transaksi penjualan, termasuk tanggal, diskon, PPN, dan total pembayaran.
* **Detail Transaksi**
  Menyimpan rincian barang yang terlibat dalam setiap transaksi.

Setiap tabel memiliki **Primary Key** dan **Foreign Key** untuk menjaga integritas dan konsistensi data.

---

## 🔍 Fitur Query Utama

Database ini mendukung berbagai query SQL utama, antara lain:

* Menampilkan riwayat transaksi harian, mingguan, dan bulanan
* Menghitung total penjualan dan pendapatan
* Menampilkan detail barang yang terjual beserta jumlah dan subtotal
* Pencarian transaksi berdasarkan ID transaksi atau kasir

Query dirancang agar efisien dan mudah dikembangkan sesuai kebutuhan sistem.

---

## 💳 Sistem Transaksi & Keuangan

Sistem transaksi mencatat setiap proses penjualan yang dilakukan oleh kasir, termasuk:

* Diskon
* Pajak (PPN)
* Total pembayaran

Data keuangan yang dihasilkan dapat digunakan untuk analisis pendapatan, evaluasi kinerja penjualan, serta sebagai dasar pembuatan laporan keuangan.

---

## 🔎 Audit & Relasi Data

Database ini mendukung proses **audit data**, di mana setiap transaksi dapat ditelusuri secara detail mulai dari kasir yang bertugas hingga barang yang dijual. Relasi antar tabel dirancang untuk mencegah duplikasi data serta memudahkan proses validasi dan pelacakan apabila terjadi kesalahan atau selisih data.

---

## 🛠️ Teknologi yang Digunakan

* Database : MySQL
* Query Language : SQL
* Tools : MySQL Workbench

---

## 👤 Informasi Mahasiswa

* **Nama** : ATHAYA DAFFA,VYKA AMANUL ALAM,DANAR IKHSAN,ANDREAN VIERY
* **NIM** : 250119004,250119024,250119006,210102041
* **Program Studi** : Teknologi Rekayasa Perangkat Lunak (TRPL)

---

## 📎 Catatan

Proyek ini merupakan simulasi sistem database minimarket yang mencerminkan kebutuhan nyata di lingkungan ritel modern, khususnya pada sistem transaksi Indomaret.

