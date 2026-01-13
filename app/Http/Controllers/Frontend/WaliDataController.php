<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Support\Facades\Cache;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
use Yajra\DataTables\DataTables;
use Illuminate\Pagination\LengthAwarePaginator;

class WaliDataController extends Controller
{
   
    function get_dssd_final(Request $request)
    {
        // 🔹 Ambil & cache data API
        $tahun = $request->get('tahun', date('Y'));
        $data = Cache::remember('api_data_list_'.$tahun, 60, function () use($tahun) {
            $response = Http::withToken('9978ab16bf9cc48127cc7b42353d729a')
                ->get('https://sipd.go.id/ewalidata/serv/get_dssd_final', [
                    'kodepemda' => '1403',
                    'tahun' => $tahun,
                ]);

            return collect($response->json());
        });

        // 🔹 Hitung page dari DataTables
        
        // 🔹 Kirim hanya data per page (collection), bukan paginator
        return DataTables::of($data)
            ->addIndexColumn()
            ->make(true);
    }

}
