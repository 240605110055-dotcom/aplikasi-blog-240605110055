<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Artikel extends Model
{
    protected $table = 'artikel'; // ← ini yang perlu ditambah

    protected $fillable = [
        'judul',
        'isi',
        'id_penulis',
        'id_kategori',
        'gambar',
        'hari_tanggal',
    ];

    public function penulis()
    {
        return $this->belongsTo(Penulis::class, 'id_penulis');
    }

    public function kategori()
    {
        return $this->belongsTo(KategoriArtikel::class, 'id_kategori');
    }
}