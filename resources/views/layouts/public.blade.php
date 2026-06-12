<!DOCTYPE html>
<html lang="id">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>@yield('title', 'Blog')</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
<style>
* { font-family: 'Inter', sans-serif; }
body { background-color: #f0f4f0; }

/* Navbar */
.navbar { padding: 14px 0; background-color: #1a2e1a !important; box-shadow: 0 2px 12px rgba(0,0,0,0.15); }
.brand-title { font-weight: 800; font-size: 1.25rem; letter-spacing: 0.3px; color: #fff; }
.brand-sub { font-size: 0.7rem; opacity: 0.55; display: block; margin-top: -2px; color: #fff; }
.nav-link { font-weight: 500; font-size: 0.88rem; padding: 6px 14px !important; border-radius: 6px; transition: background 0.2s; color: rgba(255,255,255,0.75) !important; }
.nav-link:hover { background: rgba(255,255,255,0.1); color: #fff !important; }
.btn-login { background-color: #198754; color: #fff !important; font-weight: 600; font-size: 0.88rem; padding: 6px 18px !important; border-radius: 6px; transition: background 0.2s; }
.btn-login:hover { background-color: #157347 !important; color: #fff !important; }

/* Cards */
.card { border: none; box-shadow: 0 2px 8px rgba(0,0,0,0.07); border-radius: 14px; transition: box-shadow 0.2s, transform 0.2s; background: #fff; }
.card:hover { box-shadow: 0 6px 20px rgba(0,0,0,0.11); transform: translateY(-2px); }
.card-img-top { border-radius: 14px 14px 0 0; }
.card-title a { color: #1a2e1a; text-decoration: none; font-weight: 700; }
.card-title a:hover { color: #198754; }
.card-text { color: #5a6a5a; font-size: 0.9rem; line-height: 1.7; }

/* Footer */
footer { background-color: #1a2e1a; color: #7a9a7a; }

/* Kategori badge sidebar */
.kategori-badge {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 9px 14px;
    border-radius: 8px;
    text-decoration: none;
    color: #3a5a3a;
    margin-bottom: 6px;
    background: #f0f7f0;
    border: 1px solid #c8e6c9;
    font-size: 0.88rem;
    font-weight: 500;
    transition: all 0.2s ease;
}
.kategori-badge:hover {
    background: #d1e7dd;
    color: #146c43;
    border-color: #a3cfbb;
}
.kategori-badge.active {
    background: #198754;
    color: white;
    border-color: #198754;
    box-shadow: 0 2px 8px rgba(25,135,84,0.25);
}
.badge-count {
    font-size: 0.72rem;
    font-weight: 600;
    border-radius: 50px;
    padding: 1px 8px;
    min-width: 24px;
    text-align: center;
}
.kategori-badge:not(.active) .badge-count {
    background: #c8e6c9;
    color: #146c43;
}
.kategori-badge.active .badge-count {
    background: rgba(255,255,255,0.25);
    color: #fff;
}

/* Sidebar card */
.sidebar-card { border-radius: 14px; border: none; box-shadow: 0 2px 8px rgba(0,0,0,0.07); }
.sidebar-card .card-body { padding: 1.25rem; }
.sidebar-heading { font-size: 0.85rem; font-weight: 700; color: #1a2e1a; text-transform: uppercase; letter-spacing: 0.06em; margin-bottom: 0.75rem; padding-bottom: 0.75rem; border-bottom: 2px solid #d1e7dd; }
</style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark mb-4">
<div class="container">
<a class="navbar-brand" href="{{ route('public.index') }}">
<span class="brand-title">Blog Kami</span>
<span class="brand-sub">Artikel terbaru seputar teknologi dan pemrograman</span>
</a>
<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
<span class="navbar-toggler-icon"></span>
</button>
<div class="collapse navbar-collapse" id="navbarNav">
<ul class="navbar-nav ms-auto align-items-center gap-1">
<li class="nav-item"><a class="nav-link" href="{{ route('public.index') }}">Beranda</a></li>
<li class="nav-item"><a class="nav-link btn-login ms-2" href="{{ route('login') }}">Login</a></li>
</ul>
</div>
</div>
</nav>
<div class="container mb-5">
<div class="row">
<div class="col-lg-8">
@yield('content')
</div>
<div class="col-lg-4">
@yield('sidebar')
</div>
</div>
</div>
<footer class="py-4 mt-5">
<div class="container text-center">
<small>&copy; {{ date('Y') }} Blog Kami. Seluruh hak cipta dilindungi.</small>
</div>
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>