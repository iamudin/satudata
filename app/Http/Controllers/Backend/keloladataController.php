<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Model\Elemen;
use App\Model\Opd;
use App\Model\Data;
use Illuminate\Support\Facades\Auth;

class keloladataController extends Controller
{
    public function index()
    {
        $opds = Opd::all();

        if(Auth::user()->level == 2){
            $datas = Elemen::whereOpdId(Auth::user()->opd_id)->whereNull('parent_id')->paginate(5);
        }else{
            $datas = Elemen::whereNull('parent_id')->paginate(5);
        }
        $tahuns = array(date("Y")-2,date("Y")-1);
        $elemen = new Elemen;
        return view('backend.keloladata.index',['opds'=>$opds,'datas'=>$datas,'tahuns'=>$tahuns,'elemen'=>$elemen]);
    }
    public function opd(Request $request)
    {
        $opds = Opd::all();
        $datas = Elemen::whereOpdId($request->opd)->whereNull('parent_id')->paginate();
        $tahuns = array(date("Y")-2,date("Y")-1);
        $elemen = new Elemen;
        return view('backend.keloladata.index',['opds'=>$opds,'datas'=>$datas,'tahuns'=>$tahuns,'elemen'=>$elemen]);
    }

    public function save(Request $request) 
    {
        if(Data::updateOrCreate(['elemen_id' => $request->elemen_id, 'tahun' => $request->tahun],['jumlah' => str_replace(',', '.', $request->jumlah)])){
            return response() -> json(['status'=> 'success','message'=> 'Data berhasil disimpan']);
        }
        return response() -> json(['status'=> 'error','message'=> 'Data gagal disimpan']);
    }
}
