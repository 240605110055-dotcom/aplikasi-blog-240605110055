
<?php $__env->startSection('title', $artikel->judul); ?>
<?php $__env->startSection('content'); ?>
<nav aria-label="breadcrumb" class="mb-3">
<ol class="breadcrumb">
<li class="breadcrumb-item"><a href="<?php echo e(route('public.index')); ?>" class="text-success text-decoration-none">Beranda</a></li>
<li class="breadcrumb-item"><a href="<?php echo e(route('public.index', ['kategori' => $artikel->id_kategori])); ?>" class="text-success text-decoration-none"><?php echo e($artikel->kategori->nama_kategori ?? '-'); ?></a></li>
<li class="breadcrumb-item active text-muted"><?php echo e(Str::limit($artikel->judul, 40)); ?></li>
</ol>
</nav>
<div class="card">
<?php if($artikel->gambar): ?>
<img src="<?php echo e(asset('storage/gambar/' . $artikel->gambar)); ?>" class="card-img-top" style="height: 300px; object-fit: cover;">
<?php endif; ?>
<div class="card-body">
    <span class="badge rounded-pill mb-2" style="background-color:#d1e7dd; color:#146c43; font-size:0.78rem;">
<?php echo e($artikel->kategori->nama_kategori ?? '-'); ?>

</span>
<h4 class="fw-bold"><?php echo e($artikel->judul); ?></h4>
<div class="d-flex align-items-center mt-2 mb-2">
<img src="<?php echo e(asset('storage/foto/' . $artikel->penulis->foto)); ?>"
     style="width:32px; height:32px; border-radius:50%; object-fit:cover; margin-right:8px;">
<small class="text-muted">
<?php echo e(($artikel->penulis->nama_depan ?? '') . ' ' . ($artikel->penulis->nama_belakang ?? '-')); ?> &middot;
<?php echo e($artikel->kategori->nama_kategori ?? '-'); ?> &middot;
<?php echo e($artikel->hari_tanggal); ?>

</small>
</div>
<hr>
<div class="mt-3">
<?php echo $artikel->isi; ?>

</div>
<hr>
<a href="<?php echo e(route('public.index')); ?>" class="btn btn-secondary btn-sm">&larr; Kembali ke Beranda</a>
</div>
</div>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('sidebar'); ?>
<div class="card">
<div class="card-body">
<h6 class="fw-bold mb-3">Artikel Terkait</h6>
<?php $__empty_1 = true; $__currentLoopData = $artikelTerkait; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $terkait): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>
<a href="<?php echo e(route('public.show', $terkait->id)); ?>" class="text-decoration-none text-dark">
<div class="d-flex mb-3">
<?php if($terkait->gambar): ?>
<img src="<?php echo e(asset('storage/gambar/' . $terkait->gambar)); ?>"
     style="width:80px; height:60px; object-fit:cover; border-radius:6px; flex-shrink:0;">
<?php endif; ?>
<div class="ms-2">
<p class="mb-1 fw-semibold" style="font-size:0.85rem; line-height:1.3;"><?php echo e($terkait->judul); ?></p>
<small class="text-muted" style="font-size:0.78rem;"><?php echo e($terkait->hari_tanggal); ?></small>
</div>
</div>
</a>
<?php if(!$loop->last): ?><hr class="my-2"><?php endif; ?>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); if ($__empty_1): ?>
<p class="text-muted small">Tidak ada artikel terkait.</p>
<?php endif; ?>
</div>
</div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.public', array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?><?php /**PATH C:\xampp\htdocs\aplikasi-blog\resources\views/public/show.blade.php ENDPATH**/ ?>