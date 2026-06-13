# Aplikasi Blog Laravel

---

# Identitas Mahasiswa

**Nama:** Alzainap Lariza k
**NIM:** 240605110055

---

# Deskripsi Aplikasi

Aplikasi Blog Laravel merupakan sistem manajemen konten (CMS) yang digunakan untuk mengelola artikel, penulis, dan kategori artikel. Aplikasi ini memiliki dua jenis halaman, yaitu:

## Halaman Administrator (CMS)

- Login dan Logout
- Kelola Penulis (CRUD)
- Kelola Kategori Artikel (CRUD)
- Kelola Artikel (CRUD)

## Halaman Pengunjung

- Menampilkan 5 artikel terbaru
- Menampilkan daftar kategori artikel
- Filter artikel berdasarkan kategori
- Menampilkan detail artikel
- Menampilkan artikel terkait berdasarkan kategori yang sama

Aplikasi dibangun menggunakan Framework Laravel dan database MySQL sesuai ketentuan UAS Pemrograman Web.

---

# Langkah Menjalankan Aplikasi

## 1. Clone Repository

```bash
git clone https://github.com/240605110055-dotcom/aplikasi-blog-240605110055.git
```

## 2. Masuk ke Folder Project

```bash
cd aplikasi-blog-240605110055
```

## 3. Install Dependency

```bash
composer install
```

## 4. Salin File Konfigurasi

```bash
cp .env.example .env
```

## 5. Generate Application Key

```bash
php artisan key:generate
```

## 6. Atur Konfigurasi Database

Buka file `.env` kemudian sesuaikan konfigurasi database MySQL yang digunakan.

```env
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=db_blog
DB_USERNAME=root
DB_PASSWORD=
```

## 7. Jalankan Migrasi Database

```bash
php artisan migrate
```

## 8. Jalankan Aplikasi

```bash
php artisan serve
```

## 9. Buka Browser

```text
http://localhost:8000
```

---

# Video Demonstrasi

**Link YouTube:**  
https://youtu.be/9ioCJh2AhUE?si=b3MIMXeN8oEkYhjH
