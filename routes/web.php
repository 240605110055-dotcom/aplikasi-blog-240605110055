<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\ArtikelController;
use App\Http\Controllers\PenulisController;
use App\Http\Controllers\KategoriArtikelController;
use App\Http\Controllers\PublicController;

Route::get('/', [PublicController::class, 'index'])->name('public.index');

// Route untuk halaman login
Route::get('/login', [LoginController::class, 'index'])->name('login')->middleware('guest');
Route::post('/login', [LoginController::class, 'proses'])->name('login.proses')->middleware('guest');

// Route untuk logout
Route::post('/logout', [LoginController::class, 'logout'])->name('logout')->middleware('auth');

// Route yang dilindungi middleware auth
Route::middleware('auth')->group(function () {
    Route::get('/dashboard', [DashboardController::class, 'index'])->name('dashboard');

    Route::resource('artikel', ArtikelController::class)->except(['show']);
    Route::resource('penulis', PenulisController::class)->except(['show']);
    Route::resource('kategori', KategoriArtikelController::class)->except(['show']);
});

// PINDAHKAN KE PALING AKHIR DAN TAMBAH CONSTRAINT ↓
Route::get('/artikel/{id}', [PublicController::class, 'show'])->name('public.show')->where('id', '[0-9]+');