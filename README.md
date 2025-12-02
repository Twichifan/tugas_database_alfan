1. Deskripsi Project

Project ini adalah sistem database sederhana untuk mengelola data bus, aktivitas bus, penumpang, dan keberangkatan.
Database ini mencakup:

Data penumpang (nama, jenis kelamin, usia, riwayat penyakit)

Data bus travel (nama bus, tujuan, jadwal, harga, sopir)

Aktivitas bus (kode bus, lokasi terakhir, warna, status perjalanan)

Data keberangkatan (nama penumpang, stasiun keberangkatan, jadwal boarding dan sampai)

Project ini menggunakan MySQL dan mendemonstrasikan operasi dasar CRUD: CREATE, READ, UPDATE, DELETE.

2. Struktur Tabel
tabel_penumpang
Kolom	Tipe	Keterangan
no	INT AUTO_INCREMENT PRIMARY KEY	ID unik penumpang
nama	VARCHAR(100)	Nama lengkap penumpang
jenis_kelamin	CHAR(1)	L = Laki-laki, P = Perempuan
usia	INT	Usia penumpang
riwayat_penyakit	VARCHAR(100)	Riwayat kesehatan
bus_travel
Kolom	Tipe	Keterangan
id_bus	INT AUTO_INCREMENT PRIMARY KEY	ID unik bus
nama_bus	VARCHAR(50)	Nama bus
tujuan	VARCHAR(100)	Tujuan perjalanan
jadwal	VARCHAR(20)	Jam keberangkatan & kedatangan
harga	INT	Harga tiket
nama_sopir	VARCHAR(50)	Nama sopir bus
bus_activity
Kolom	Tipe	Keterangan
id_activity	INT AUTO_INCREMENT PRIMARY KEY	ID unik aktivitas
kode_bus	VARCHAR(20)	Kode bus
nama_sopir	VARCHAR(50)	Nama sopir
terakhir_dilihat	VARCHAR(50)	Lokasi terakhir bus
warna_bus	VARCHAR(20)	Warna bus
aktivitas_bus	VARCHAR(50)	Status perjalanan
tabel_keberangkatan
Kolom	Tipe	Keterangan
id_keberangkatan	INT AUTO_INCREMENT PRIMARY KEY	ID unik keberangkatan
nama_depan	VARCHAR(50)	Nama depan penumpang
nama_belakang	VARCHAR(50)	Nama belakang penumpang
stasiun_keberangkatan	VARCHAR(50)	Stasiun awal
kedatangan	VARCHAR(50)	Stasiun tujuan
boarding	TIME	Waktu boarding
sampai	TIME	Waktu sampai
3. Contoh Operasi CRUD
CREATE
INSERT INTO tabel_penumpang (nama, jenis_kelamin, usia, riwayat_penyakit) VALUES
('Albila Khairunnisa', 'P', 23, 'Tidak ada');

READ
SELECT * FROM tabel_penumpang;

UPDATE
UPDATE tabel_penumpang
SET riwayat_penyakit = 'Alergi Debu'
WHERE nama = 'Albila Khairunnisa';

DELETE
DELETE FROM bus_activity
WHERE kode_bus = 'SR_13' AND nama_sopir = 'Ari';

4. Catatan

Semua tabel menggunakan AUTO_INCREMENT untuk primary key agar unik.

Gunakan WHERE saat melakukan UPDATE atau DELETE untuk mencegah perubahan seluruh data.

Format waktu pada tabel_keberangkatan menggunakan TIME (HH:MM:SS).

5. Ekstensi yang Bisa Dilakukan

Menambahkan tabel relasi antara penumpang dan bus (misal tiket atau kursi).

Menambahkan status seat booking.

Menambahkan trigger atau view untuk laporan perjalanan.
