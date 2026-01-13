<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Model\Elemen;
use App\Model\Opd;
use App\Model\Data;
use Illuminate\Support\Facades\Auth;

class laporanController extends Controller
{
    public function index()
    {
        $opds = Opd::all();

        if(Auth::user()->level == 2){
            $datas = Elemen::whereOpdId(Auth::user()->opd_id)->whereNull('parent_id')->paginate(5);
        }else{
            $datas = Elemen::whereNull('parent_id')->paginate(5);
        }
        $tahuns = array(date("Y")-4,date("Y")-3,date("Y")-2,date("Y")-1,date("Y"));
        $elemen = new Elemen;
        return view('backend.laporan.index',['opds'=>$opds,'datas'=>$datas,'tahuns'=>$tahuns,'elemen'=>$elemen]);
    }
    public function opd(Request $request)
    {
        $opds = Opd::all();
        $datas = Elemen::whereOpdId($request->opd)->whereNull('parent_id')->paginate();
        $tahuns = array(date("Y")-4,date("Y")-3,date("Y")-2,date("Y")-1,date("Y"));
        $elemen = new Elemen;
        return view('backend.laporan.index',['opds'=>$opds,'datas'=>$datas,'tahuns'=>$tahuns,'elemen'=>$elemen]);
    }

    public function chart($id) 
    {
        $tahuns = array(date("Y")-4,date("Y")-3,date("Y")-2,date("Y")-1,date("Y"));
        $query=Data::whereElemenId($id)->whereIn('tahun', $tahuns)->orderBy('tahun','desc')->get();
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
