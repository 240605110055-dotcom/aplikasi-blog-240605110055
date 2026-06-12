<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login — Aplikasi Blog</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <style>
        * { font-family: 'Inter', sans-serif; }
        body { background-color: #f0f4f0; }
        .card {
            border: none;
            border-radius: 14px;
            box-shadow: 0 4px 24px rgba(0,0,0,0.09);
        }
        .card-header {
            background-color: #1a2e1a;
            border-bottom: none;
            border-radius: 14px 14px 0 0 !important;
            padding: 28px 32px 24px;
        }
        .card-header h5 { color: #fff; font-weight: 700; font-size: 1.15rem; }
        .card-header p { color: rgba(255,255,255,0.55); font-size: 0.82rem; }
        .card-body { padding: 28px 32px 32px; }
        .form-label { font-size: 0.85rem; font-weight: 600; color: #1a2e1a; }
        .form-control {
            border-radius: 8px;
            border: 1px solid #c8e6c9;
            background-color: #f8fdf8;
            font-size: 0.9rem;
            padding: 10px 14px;
        }
        .form-control:focus {
            border-color: #198754;
            box-shadow: 0 0 0 0.2rem rgba(25,135,84,0.15);
            background-color: #fff;
        }
        .btn-masuk {
            background-color: #198754;
            border: none;
            border-radius: 8px;
            font-weight: 600;
            font-size: 0.95rem;
            padding: 10px;
            transition: background 0.2s;
        }
        .btn-masuk:hover { background-color: #157347; }
        .back-link { font-size: 0.82rem; color: #198754; text-decoration: none; }
        .back-link:hover { color: #146c43; text-decoration: underline; }
    </style>
</head>
<body>
    <div class="container">
        <div class="row justify-content-center align-items-center min-vh-100">
            <div class="col-md-4">
                <div class="card">
                    <div class="card-header">
                        <h5 class="mb-1">Aplikasi Blog</h5>
                        <p class="mb-0">Masukkan kredensial untuk melanjutkan</p>
                    </div>
                    <div class="card-body">

                        @if($errors->has('gagal'))
                            <div class="alert alert-danger alert-dismissible fade show py-2 small" role="alert">
                                {{ $errors->first('gagal') }}
                                <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                            </div>
                        @endif

                        <form action="{{ route('login.proses') }}" method="POST">
                            @csrf
                            <div class="mb-3">
                                <label for="user_name" class="form-label">Username</label>
                                <input
                                    type="text"
                                    class="form-control"
                                    id="user_name"
                                    name="user_name"
                                    value="{{ old('user_name') }}"
                                    placeholder="Masukkan username"
                                    autofocus>
                            </div>
                            <div class="mb-4">
                                <label for="password" class="form-label">Password</label>
                                <input
                                    type="password"
                                    class="form-control"
                                    id="password"
                                    name="password"
                                    placeholder="Masukkan password">
                            </div>
                            <div class="d-grid mb-3">
                                <button type="submit" class="btn btn-success btn-masuk">Masuk</button>
                            </div>
                            <div class="text-center">
                                <a href="{{ route('public.index') }}" class="back-link">← Kembali ke Beranda</a>
                            </div>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>