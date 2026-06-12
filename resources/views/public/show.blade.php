@extends('layouts.public')
@section('title', $artikel->judul)
@section('content')
<nav aria-label="breadcrumb" class="mb-3">
<ol class="breadcrumb">
<li class="breadcrumb-item"><a href="{{ route('public.index') }}" class="text-success text-decoration-none">Beranda</a></li>
<li class="breadcrumb-item"><a href="{{ route('public.index', ['kategori' => $artikel->id_kategori]) }}" class="text-success text-decoration-none">{{ $artikel->kategori->nama_kategori ?? '-' }}</a></li>
<li class="breadcrumb-item active text-muted">{{ Str::limit($artikel->judul, 40) }}</li>
</ol>
</nav>
<div class="card">
@if ($artikel->gambar)
<img src="{{ asset('storage/gambar/' . $artikel->gambar) }}" class="card-img-top" style="height: 300px; object-fit: cover;">
@endif
<div class="card-body">
    <span class="badge rounded-pill mb-2" style="background-color:#d1e7dd; color:#146c43; font-size:0.78rem;">
{{ $artikel->kategori->nama_kategori ?? '-' }}
</span>
<h4 class="fw-bold">{{ $artikel->judul }}</h4>
<div class="d-flex align-items-center mt-2 mb-2">
<img src="{{ asset('storage/foto/' . $artikel->penulis->foto) }}"
     style="width:32px; height:32px; border-radius:50%; object-fit:cover; margin-right:8px;">
<small class="text-muted">
{{ ($artikel->penulis->nama_depan ?? '') . ' ' . ($artikel->penulis->nama_belakang ?? '-') }} &middot;
{{ $artikel->kategori->nama_kategori ?? '-' }} &middot;
{{ $artikel->hari_tanggal }}
</small>
</div>
<hr>
<div class="mt-3">
{!! $artikel->isi !!}
</div>
<hr>
<a href="{{ route('public.index') }}" class="btn btn-secondary btn-sm">&larr; Kembali ke Beranda</a>
</div>
</div>
@endsection
@section('sidebar')
<div class="card">
<div class="card-body">
<h6 class="fw-bold mb-3">Artikel Terkait</h6>
@forelse ($artikelTerkait as $terkait)
<a href="{{ route('public.show', $terkait->id) }}" class="text-decoration-none text-dark">
<div class="d-flex mb-3">
@if ($terkait->gambar)
<img src="{{ asset('storage/gambar/' . $terkait->gambar) }}"
     style="width:80px; height:60px; object-fit:cover; border-radius:6px; flex-shrink:0;">
@endif
<div class="ms-2">
<p class="mb-1 fw-semibold" style="font-size:0.85rem; line-height:1.3;">{{ $terkait->judul }}</p>
<small class="text-muted" style="font-size:0.78rem;">{{ $terkait->hari_tanggal }}</small>
</div>
</div>
</a>
@if (!$loop->last)<hr class="my-2">@endif
@empty
<p class="text-muted small">Tidak ada artikel terkait.</p>
@endforelse
</div>
</div>
@endsection