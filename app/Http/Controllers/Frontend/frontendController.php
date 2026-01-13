<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Model\foto;
use App\Model\Opd;
use App\Model\Wilayah;
use App\Model\Elemen;
use App\Model\Dokumen;
use App\Model\Data;
use App\Exports\PencarianExport;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Http;
use Yajra\DataTables\DataTables;
class frontendController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
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
    public function index()
    {   
        $data = array(
            'slider' => foto::where('status',config('master.status_foto.slider'))->orderBy('id','desc')->take(5)->get(),
            'data' => Elemen::where('status','1')->get(),
            'elemen' => Elemen::whereNull('parent_id')->get(),
            'opd' => Opd::orderby('tingkatan','asc')->get(),
            'wilayah' => Wilayah::where('tingkatan','1')->get(),
            'buku' => Dokumen::whereStatus(config('master.status_dokumen.buku'))->latest()->get(),
            'interaktif' => Dokumen::whereStatus(config('master.status_dokumen.interaktif'))->latest()->get(),
            'insosek' => Dokumen::whereStatus(config('master.status_dokumen.insosek'))->latest()->get(),
            'stunting' => Dokumen::whereStatus(config('master.status_dokumen.stunting'))->latest()->get(),
            'hivaids' => Dokumen::whereStatus(config('master.status_dokumen.hivaids'))->latest()->get(),
            'monografi' => Dokumen::whereStatus(config('master.status_dokumen.monografi'))->latest()->get(),
        );
        return view('frontend.beranda.index',$data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    public function opdAll(){
        $opd_vertikal = Opd::whereTingkatan('6')->get();
        $opd = Opd::whereNotIn('tingkatan', [6])->get();
        return view('frontend.beranda.opdall', compact('opd','opd_vertikal'));
    }

    public function opdDetail($id){
        $tahun5 = config('master.tahunlaporan');

        if (!isset($_GET['tahunawal'], $_GET['tahunakhir'])) {
            $tahuns = config('master.tahunlaporan');
            }else{
            for ($i = $_GET['tahunawal']; $i <= $_GET['tahunakhir']; $i++){
                $tahuns[]=$i;
            }
        }
        $datas = Elemen::whereOpdId($id)->whereNull('parent_id')->get();
        $elemen = new Elemen;
        $dataOpd = Opd::findOrFail($id);
        return view('frontend.beranda.opd', compact('dataOpd','tahuns', 'elemen','datas', 'tahun5'));
    }

    public function cari(Request $request){
        $cari = $request->keyword;
        $data = [
            'count'=>Elemen::where('nama' ,'LIKE','%'.$cari.'%')->count(),
            'elemen'=>Elemen::whereNull('parent_id')->where('nama' ,'LIKE','%'.$cari.'%')->get(),
            'subelemen'=>Elemen::whereNotNull('parent_id')->where('nama' ,'LIKE','%'.$cari.'%')->get(),
            'keyword'=>$cari
        ];
        return view('frontend.beranda.cari.index', $data);
    }

    public function caridetail($id){
        $elemen = Elemen::find($id);

        $nama = '<i>'.$elemen->nama.'</i>';
        if($elemen->parent){
            $nama = $elemen->getParentNamaFront($nama,$elemen->parent->id);
        }
        $data = [
            'datas'=> $elemen,
            'tahuns' => config('master.tahunlaporan'),
            'elemen' => new Elemen,
            'nama' => $nama,
        ];
        return view('frontend.beranda.cari.cari-detail', $data);
    }

    public function export($id) 
    {
        $ext = explode('.', $id);
        if(isset($ext[1])){
            $id = $ext[0];
            $type = $ext[1];
        }else{
            $id = $id;
            $type = 'xlsx';
        }
        if($type == 'xlsx'){
            return Excel::download(new PencarianExport($id), $id.'.xlsx');
        }else if($type == 'csv'){
            return Excel::download(new PencarianExport($id), $id.'.csv',\Maatwebsite\Excel\Excel::CSV, [
                'Content-Type' => 'text/csv',
          ]);
        }
    }

    public function chart($id) 
    {
        
        $query=Data::whereElemenId($id)->whereIn('tahun',config('master.tahunlaporan'))->orderBy('tahun','desc')->get();
        $jumlah=array();
        $tahun=array();
        foreach($query as $qr){
            $jumlah[]=$qr->jumlah;
            $tahun[]=$qr->tahun;
        }
        $data = [
            'jumlah' => $jumlah,
            'tahun' => $tahun
        ];
        return $data;
    }

}