<?php

namespace App\Http\Controllers\Api;

use Carbon\Carbon;
use App\Model\Data;
use App\Model\User;
use App\Model\Elemen;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;

class ElemenController extends Controller
{
    public function login(Request $request)
    {
        $credentials=$request->only('email', 'password');
        $cekuser = User::where(['email'=>$request->email])->first();
        if(!$cekuser){
            return response()->json(['status'=>false,'pesan'=>'Email tidak terdaftar']);
        }
        elseif(!Hash::check($request->password, $cekuser->password)){
            return response()->json(['status'=>false,'pesan'=>'Password salah']);
        }

        if (auth()->attempt($credentials)) {
            $user=auth()->user();
            $token=$user->createToken(uniqid().now())->plainTextToken;
            $response=[
                'status'=>true,
                'message'=>'Login berhasil',
                'data'=>[
                    'user'=>$user,
                    'token'=>$token,
                ],
            ];
        }
        return response()->json($response ?? ['status'=>false, 'message'=>'Login failed']);
    }
    // public function login(){
    //     $user = User::join('members', 'members.user_id', 'users.id')
    //     ->where([['email', request('email')], ['members.aplikasi_id', 1]])
    //     ->select('users.*')
    //     ->first();
    //     if($user){
    //         if(Hash::check(base64_decode(request('password')), $user->password)) {
    //             Auth::attempt(['email' => $user->email, 'password' => $user->password]);
    //             $success['status']  =  true;
    //             $success['message'] =  'Login berhasil !';
    //             $success['token']   =  $user->createToken('nApp')->accessToken;
    //             $success['id']      =  $user->id;
    //             return response()->json([$success], $this->successStatus);
    //         }
    //         else{
    //             return response()->json(['error'=> 'Unauthorized'], 401);
    //         }
    //     }
    //     else{
    //         return response()->json(['error'=> 'Unauthorized'], 401);
    //     }
    // }

    public function cari(Request $request){
        $cari = $request->keyword;
        if($cari){
            $data = [
                'count'=>Elemen::where('nama' ,'LIKE','%'.$cari.'%')->orWhereHas('opd', function ($query) use ($cari) {
                    $query->where('nama', 'like', '%' . $cari . '%');
            })->count(),
                'elemen'=>Elemen::where('nama' ,'LIKE','%'.$cari.'%')->orWhereHas('opd', function ($query) use ($cari) {
                        $query->where('nama', 'like', '%' . $cari . '%');
                })->whereNull('parent_id')->get(),
                'subelemen'=>Elemen::where('nama' ,'LIKE','%'.$cari.'%')->orWhereHas('opd', function ($query) use ($cari) {
                        $query->where('nama', 'like', '%' . $cari . '%');
                })->whereNotNull('parent_id')->get(),
                'keyword'=>$cari
            ];
        }else{
            $data = [
                'count'=>Elemen::where('nama' ,'LIKE','%'.$cari.'%')->orWhereHas('opd', function ($query) use ($cari) {
                    $query->where('nama', 'like', '%' . $cari . '%');
            })->count(),
                'elemen'=>Elemen::where('nama' ,'LIKE','%'.$cari.'%')->orWhereHas('opd', function ($query) use ($cari) {
                        $query->where('nama', 'like', '%' . $cari . '%');
                })->whereNull('parent_id')->get(),
                'keyword'=>$cari
            ];
        }
        return response()->json($data);
    }

    public function caridetail(Request $request){
        $elemen = Elemen::find($request->id);
        foreach(config('master.tahunlaporan') as $th){
            $tahun[$th] = Data::whereElemenId($elemen->id)->whereTahun($th)->first()->jumlah??"";
        }
        $data[] = [
            'nomor'=>'1',
            'elemen'=>$elemen->nama,
            'satuan'=>$elemen->satuan,
            'opd'=>$elemen->opd->nama,
            'status'=>(count($elemen->data)>0)?'Ada':'',
            'data'=>$tahun,
            'keterangan'=>$elemen->keterangan??"-",
        ];
        $no=''; 
        foreach($elemen->children as $key => $item){
            $data[]=$elemen->getDataSubElemen($item->id,$no,$key);
        }
        return response()->json(['tahun'=>config('master.tahunlaporan'),'data'=>$data]);
    }

    public function data(Request $request){
        $elemen = Elemen::whereNull('parent_id')->paginate(5);
        foreach($elemen as $i=> $items) {
            foreach(config('master.tahunlaporan') as $th){
                $tahun[$th] = Data::whereElemenId($items->id)->whereTahun($th)->first()->jumlah??"";
            }
            $data[] = [
                'nomor'=>'1',
                'elemen'=>$items->nama,
                'satuan'=>$items->satuan,
                'opd'=>$items->opd->nama,
                'status'=>(count($items->data)>0)?'Ada':'',
                'data'=>$tahun,
                'keterangan'=>$items->keterangan??"-",
            ];
            $no=''; 
            foreach($items->children as $key => $item){
                $data[]=$items->getDataSubElemen($item->id,$no,$key);
            }
        }
        return response()->json(['data'=>$data]);
    }
    public function dcat(Request $request){
        $elemen = Elemen::whereNull('parent_id')->cursor();
        foreach($elemen as $i=> $items) {
        $data[] = [
                    "@type" => "dcat:Dataset",
                    "accessLevel" => "public",
                    "contactPoint" => [
                        "fn" => "Dinas Komunikasi, Informatika dan Statistik Pemerintah Kabupaten Bengkalis",
                        "hasEmail" => "mailto:diskominfotik@bengkaliskab.go.id"
                    ],
                    "distribution" => [
                        [
                            "@type" => "dcat:Distribution",
                            "downloadURL" => url("export/".$items->id.".csv"),
                            "mediaType" => "text/csv",
                            "format" => "csv",
                            "title" => $items->nama
                        ]
                    ],
                    "identifier" => $items->id,
                    "issued" => Carbon::parse($items->created_at)->toDateString(),
                    "landingPage" => url("caridetail/".$items->id."#cari"),
                    "modified" => "-",
                    "accrualPeriodicity" => "Tahunan",
                    "publisher" => [
                        "@type" => "org:Organization",
                        "name" => ($items->opd->nama??" ")." Pemerintah Kabupaten Bengkalis"
                    ],
                    "title" => $items->nama,
                    "description" => $items->nama,
                    "keyword" => [
                        "Bengkalis",
                        "Pemerintah Kabupaten Bengkalis",
                        "Satu Data",
                    ]
                ];
        }
        $datas =  $data = [
            "@context" => "https://project-open-data.cio.gov/v1.1/schema/catalog.jsonld",
            "@id" => url("/"),
            "@type" => "dcat:Catalog",
            "conformsTo" => "https://project-open-data.cio.gov/v1.1/schema",
            "describedBy" => "https://project-open-data.cio.gov/v1.1/schema/catalog.json",
            "dataset" => $data
            ];
        return response()->json($datas);
    }

    public function detail($id){
        $elemen = Elemen::find($request->id);
        foreach(config('master.tahunlaporan') as $th){
            $tahun[$th] = Data::whereElemenId($elemen->id)->whereTahun($th)->first()->jumlah??"";
        }
        $data[] = [
            'nomor'=>'1',
            'elemen'=>$elemen->nama,
            'satuan'=>$elemen->satuan,
            'opd'=>$elemen->opd->nama,
            'status'=>(count($elemen->data)>0)?'Ada':'',
            'data'=>$tahun,
            'keterangan'=>$elemen->keterangan??"-",
        ];
        $no=''; 
        foreach($elemen->children as $key => $item){
            $data[]=$elemen->getDataSubElemen($item->id,$no,$key);
        }
        return response()->json(['data'=>$data]);
    }

}