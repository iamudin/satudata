<?php
namespace App\Exports;

use App\Model\Elemen;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;

class PencarianExport implements FromView
{
    protected $id;

    function __construct($id) {
            $this->id = $id;
    }
    public function view(): View
    {
        $qr = Elemen::find($this->id);
        if($qr->parent_id==null){
            $elemen=$qr;
        }else{
            $elemen = Elemen::whereId($qr->parent_id)->first();
        }

        $data = [
            'datas'=> $elemen,
            'tahuns' => array(date("Y"),date("Y")-1,date("Y")-2,date("Y")-3,date("Y")-4),
            'elemen' => new Elemen
        ];
        return view('frontend.beranda.cari.export', $data);
    }
}