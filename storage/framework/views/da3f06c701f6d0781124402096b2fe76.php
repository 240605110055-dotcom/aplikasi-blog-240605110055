
<?php $__env->startSection('title', 'Beranda'); ?>
<?php $__env->startSection('content'); ?>
<h4 class="mb-4 fw-bold" style="color:#1a2e1a;">Artikel Terbaru</h4>
<?php $__empty_1 = true; $__currentLoopData = $artikels; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $artikel): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>
<div class="card mb-4">
<?php if($artikel->gambar): ?>
<img src="<?php echo e(asset('storage/gambar/' . $artikel->gambar)); ?>" class="card-img-top" style="height: 220px; object-fit: cover;">
<?php endif; ?>
<div class="card-body p-4">
    <span class="badge rounded-pill mb-2" style="background-color:#d1e7dd; color:#146c43; font-size:0.75rem; font-weight:600; padding: 5px 12px;">
        <?php echo e($artikel->kategori->nama_kategori ?? '-'); ?>

    </span>
    <h5 class="card-title mt-1">
        <a href="<?php echo e(route('public.show', $artikel->id)); ?>"><?php echo e($artikel->judul); ?></a>
    </h5>
    <div class="d-flex align-items-center mt-2 mb-3" style="gap:8px;">
        <img src="<?php echo e(asset('storage/foto/' . $artikel->penulis->foto)); ?>"
             style="width:30px; height:30px; border-radius:50%; object-fit:cover; border:2px solid #d1e7dd;">
        <small class="text-muted" style="font-size:0.8rem;">
            <?php echo e(($artikel->penulis->nama_depan ?? '') . ' ' . ($artikel->penulis->nama_belakang ?? '-')); ?> &middot;
            <?php echo e($artikel->kategori->nama_kategori ?? '-'); ?> &middot;
            <?php echo e($artikel->hari_tanggal); ?>

        </small>
    </div>
    <p class="card-text"><?php echo e(Str::limit(strip_tags($artikel->isi), 150)); ?></p>
    <a href="<?php echo e(route('public.show', $artikel->id)); ?>" class="btn btn-sm btn-success px-3" style="border-radius:8px; font-weight:600;">Kelanjutannya &rarr;</a>
</div>
</div>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); if ($__empty_1): ?>
<p class="text-muted">Belum ada artikel.</p>
<?php endif; ?>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('sidebar'); ?>
<div class="card sidebar-card">
<div class="card-body">
<h6 class="sidebar-heading">Kategori Artikel</h6>
<a href="<?php echo e(route('public.index')); ?>" class="kategori-badge <?php echo e(!request('kategori') ? 'active' : ''); ?>">
    <span>Semua Artikel</span>
</a>
<?php $__currentLoopData = $kategoris; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $kategori): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
<a href="<?php echo e(route('public.index', ['kategori' => $kategori->id])); ?>" class="kategori-badge <?php echo e(request('kategori') == $kategori->id ? 'active' : ''); ?>">
    <span><?php echo e($kategori->nama_kategori); ?></span>
    <span class="badge-count"><?php echo e($kategori->artikel->count()); ?></span>
</a>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
</div>
</div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.public', array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?><?php /**PATH C:\xampp\htdocs\aplikasi-blog\resources\views/public/index.blade.php ENDPATH**/ ?>