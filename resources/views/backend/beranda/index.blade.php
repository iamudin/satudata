@extends('backend.home.index')
@section('content')
<?php
$countdata = App\Model\Data::count();
$countopd = App\Model\Opd::count();
$countdokumen = App\Model\Dokumen::count();
$counttotal = App\Model\Elemen::count();
?>
<div class="subheader">
    <h1 class="subheader-title">
        <i class='subheader-icon fal fa-home'></i> Selamat Datang di Satu Data Kabupaten Bengkalis
    </h1>
</div>
<div class="row">
    <div class="col-sm-6 col-xl-3">
        <div class="p-3 bg-primary-300 rounded overflow-hidden position-relative text-white mb-g">
            <div class="">
                <h3 class="display-4 d-block l-h-n m-0 fw-500">
                    {{$countdata}}
                    <small class="m-0 l-h-n">Data Master</small>
                </h3>
            </div>
            <i class="fal fa-database position-absolute pos-right pos-bottom opacity-15 mb-n1 mr-n1" style="font-size:6rem"></i>
        </div>
    </div>
    <div class="col-sm-6 col-xl-3">
        <div class="p-3 bg-warning-400 rounded overflow-hidden position-relative text-white mb-g">
            <div class="">
                <h3 class="display-4 d-block l-h-n m-0 fw-500">
                    {{$countopd}}
                    <small class="m-0 l-h-n">Total Instansi</small>
                </h3>
            </div>
            <i class="fal fa-building position-absolute pos-right pos-bottom opacity-15  mb-n1 mr-n4" style="font-size: 6rem;"></i>
        </div>
    </div>
    <div class="col-sm-6 col-xl-3">
        <div class="p-3 bg-success-200 rounded overflow-hidden position-relative text-white mb-g">
            <div class="">
                <h3 class="display-4 d-block l-h-n m-0 fw-500">
                    {{$countdokumen}}
                    <small class="m-0 l-h-n">Dokumen</small>
                </h3>
            </div>
            <i class="fal fa-file-pdf-o position-absolute pos-right pos-bottom opacity-15 mb-n5 mr-n6" style="font-size: 8rem;"></i>
        </div>
    </div>
    <div class="col-sm-6 col-xl-3">
        <div class="p-3 bg-info-200 rounded overflow-hidden position-relative text-white mb-g">
            <div class="">
                <h3 class="display-4 d-block l-h-n m-0 fw-500">
                    {{$counttotal}}
                    <small class="m-0 l-h-n">Total Keseluruhan</small>
                </h3>
            </div>
            <i class="fal fa-bar-chart position-absolute pos-right pos-bottom opacity-15 mb-n1 mr-n4" style="font-size: 6rem;"></i>
        </div>
    </div>
</div>
@endsection
