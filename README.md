Deskripsi Aplikasi
Aplikasi Blog Laravel merupakan sistem manajemen konten (CMS) yang digunakan untuk mengelola artikel, penulis, dan kategori artikel. Aplikasi ini memiliki dua jenis halaman, yaitu:

1. Halaman Administrator (CMS)
2. Login dan Logout
3. Kelola Penulis (CRUD)
4. Kelola Kategori Artikel (CRUD)
5. Kelola Artikel (CRUD)
6. Halaman Pengunjung
7. Menampilkan 5 artikel terbaru
8. Menampilkan daftar kategori artikel
9. Filter artikel berdasarkan kategori
10.Menampilkan detail artikel
11.Menampilkan artikel terkait berdasarkan kategori yang sama
   Aplikasi dibangun menggunakan Framework Laravel dan database MySQL sesuai ketentuan UAS Pemrograman Web.

Langkah Menjalankan Aplikasi
Clone Repository
git clone 

Masuk ke Folder Project
cd aplikasi-blog-240605110055

Install Dependency
composer install

Salin File Konfigurasi
cp .env.example .env

Generate Application Key
php artisan key:generate

Atur Konfigurasi Database pada File .env
Sesuaikan konfigurasi database MySQL yang digunakan.

Jalankan Migrasi Database
php artisan migrate

Jalankan Aplikasi
php artisan serve

Buka Browser
http://localhost:8000

Video Demonstrasi
