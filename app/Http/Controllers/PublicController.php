<?php

namespace App\Http\Controllers;

use App\Models\Artikel;
use App\Models\KategoriArtikel;
use Illuminate\Http\Request;

class PublicController extends Controller
{
    public function index(Request $request)
    {
       $kategoris = KategoriArtikel::withCount('artikel')->get();

        $query = Artikel::with('penulis', 'kategori')
                        ->orderBy('hari_tanggal', 'desc');

        if ($request->has('kategori')) {
            $query->where('id_kategori', $request->kategori);
        }

        $artikels = $query->take(5)->get();

        return view('public.index', compact('artikels', 'kategoris'));
    }

    public function show($id)
    {
        $artikel = Artikel::with('penulis', 'kategori')->findOrFail($id);

        $artikelTerkait = Artikel::with('penulis', 'kategori')
                                 ->where('id_kategori', $artikel->id_kategori)
                                 ->where('id', '!=', $id)
                                 ->orderBy('hari_tanggal', 'desc')
                                 ->take(5)
                                 ->get();

        return view('public.show', compact('artikel', 'artikelTerkait'));
    }
}