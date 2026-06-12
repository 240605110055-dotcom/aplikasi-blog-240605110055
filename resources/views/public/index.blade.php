@extends('layouts.public')
@section('title', 'Beranda')
@section('content')
<h4 class="mb-4 fw-bold" style="color:#1a2e1a;">Artikel Terbaru</h4>
@forelse ($artikels as $artikel)
<div class="card mb-4">
@if ($artikel->gambar)
<img src="{{ asset('storage/gambar/' . $artikel->gambar) }}" class="card-img-top" style="height: 220px; object-fit: cover;">
@endif
<div class="card-body p-4">
    <span class="badge rounded-pill mb-2" style="background-color:#d1e7dd; color:#146c43; font-size:0.75rem; font-weight:600; padding: 5px 12px;">
        {{ $artikel->kategori->nama_kategori ?? '-' }}
    </span>
    <h5 class="card-title mt-1">
        <a href="{{ route('public.show', $artikel->id) }}">{{ $artikel->judul }}</a>
    </h5>
    <div class="d-flex align-items-center mt-2 mb-3" style="gap:8px;">
        <img src="{{ asset('storage/foto/' . $artikel->penulis->foto) }}"
             style="width:30px; height:30px; border-radius:50%; object-fit:cover; border:2px solid #d1e7dd;">
        <small class="text-muted" style="font-size:0.8rem;">
            {{ ($artikel->penulis->nama_depan ?? '') . ' ' . ($artikel->penulis->nama_belakang ?? '-') }} &middot;
            {{ $artikel->kategori->nama_kategori ?? '-' }} &middot;
            {{ $artikel->hari_tanggal }}
        </small>
    </div>
    <p class="card-text">{{ Str::limit(strip_tags($artikel->isi), 150) }}</p>
    <a href="{{ route('public.show', $artikel->id) }}" class="btn btn-sm btn-success px-3" style="border-radius:8px; font-weight:600;">Kelanjutannya &rarr;</a>
</div>
</div>
@empty
<p class="text-muted">Belum ada artikel.</p>
@endforelse
@endsection

@section('sidebar')
<div class="card sidebar-card">
<div class="card-body">
<h6 class="sidebar-heading">Kategori Artikel</h6>
<a href="{{ route('public.index') }}" class="kategori-badge {{ !request('kategori') ? 'active' : '' }}">
    <span>Semua Artikel</span>
</a>
@foreach ($kategoris as $kategori)
<a href="{{ route('public.index', ['kategori' => $kategori->id]) }}" class="kategori-badge {{ request('kategori') == $kategori->id ? 'active' : '' }}">
    <span>{{ $kategori->nama_kategori }}</span>
    <span class="badge-count">{{ $kategori->artikel->count() }}</span>
</a>
@endforeach
</div>
</div>
@endsection