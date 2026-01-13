@extends('backend.home.index')
@push('title',ucwords(strtolower($halaman->nama)))
@push('header',ucwords(strtolower($halaman->nama)))
@section('content')
@if(Auth::user()->level != 2)
<div class="container">
	<form method="get" action="{{url('keloladata/opd')}}">
		<div class="row">
			<div class="col-12 pt-5">
				<!-- &nbsp; &nbsp; &nbsp; Perangkat Daerah : -->
				<select onchange="this.form.submit()" class="select2" name="opd" id="select2">
					<option value="0" selected>Pilih OPD</option>
					@foreach($opds as $data)
					<option value="{{ $data->id }}">{{$data->nama}}</option>
					@endforeach
				</select>		
			</div>
		</div>
	</form>
</div>
@endif
<div class="panel-container show">
	<div class="panel-content">
		<table id="" class="table table-bordered table-hover table-striped table-responsive">
			<thead class="bg-primary-600">
				<tr>
					<td rowspan="2" style="vertical-align : middle;text-align:center;">No</td>
					<td rowspan="2" style="vertical-align : middle;text-align:center;">Elemen / Sub Elemen</td>
					<td rowspan="2" style="vertical-align : middle;text-align:center;">Satuan</td>
					<td rowspan="2" style="vertical-align : middle;text-align:center;">Produsen Data</td>
					<td rowspan="2" style="vertical-align : middle;text-align:center;">Ketersediaan Data</td>
					<td colspan="{{count($tahuns)}}" style="vertical-align : middle;text-align:center;">Tahun Produksi</td>
					<td rowspan="2" style="vertical-align : middle;text-align:center;">Catatan</td>
				</tr>
				<tr>
					@foreach($tahuns as $th)
					<td style="vertical-align : middle;text-align:center;">{{$tahun[]=$th}}</td>
					@endforeach
				</tr>
			</thead>
			<tbody>
				@php $i=1; @endphp
				@foreach($datas as $key => $data)
				@php $i=($datas->currentpage()-1) * $datas->perpage() + $key + 1; @endphp
					<tr>
						<td style="font-weight: bold; text-align: left;">{{$i}}</td>
						<td style="font-weight: bold;">{{$data->nama??''}}</td>
						<td>{{$data->satuan??''}}</td>
						<td>{{$data->opd->nama??''}}</td>
						<td style="text-align: center;">{{(count($data->data)>0)?'Ada':''}}</td>
						@foreach($tahun as $th)
						<td>
							@if($elemen->filterjumlah($data->id??'',$th))
								@if($th == date('Y')-1)
									{!!'<input type="text" name="data" value="'.Help::desimal($elemen->filterjumlah($data->id??'',$th)->jumlah).'" data-id="'.$data->id.'" data-th="'.$th.'" style="width: 50px;"><i id="loading-spinner'.$data->id.$th.'" class="fa fa-spinner fa-spin" style="display: none;"></i>'!!}
								@else
									{{Help::desimal($elemen->filterjumlah($data->id??'',$th)->jumlah)}}
								@endif
							@elseif((count($data->children) == 0) && $data->satuan != NULL)
								{!!'<input type="text" name="data" data-id="'.$data->id.'" data-th="'.$th.'" style="width: 50px;"><i id="loading-spinner'.$data->id.$th.'" class="fa fa-spinner fa-spin" style="display: none;"></i>'!!}
							@endif
						</td>
						@endforeach
						<td>{{$data->keterangan??''}}</td>
					</tr>
					@php $tes=''; @endphp
					@foreach($data->children as $key => $item)
						@include('backend.keloladata.loop')
					@endforeach
					@php $i++; @endphp
				@endforeach
			</tbody>
		</table>
		{{ $datas->links() }}
	</div>
</div>

<!-- modalChart -->
<div class="modal1 mfp-hide" id="modalChart">
	<div class="block mx-auto" style="background-color: #FFF; max-width: 800px;">
		<div class="center" style="padding: 50px;">
			<h3 class="title">Grafik Data Per Tahun</h3>
			<div class="bottommargin mx-auto" id="graph-container" style="max-width: 100%; min-height: 350px;">
				<canvas id="chart-0"></canvas>
			</div>
		</div>
		<div class="section center m-0" style="padding: 30px;">
			<a href="#" class="btn btn-primary" onClick="$.magnificPopup.close();return false;">Close</a>
		</div>
	</div>
</div>
@endsection
@push('js')
@include('backend.home.datatable-js')
<script type="text/javascript" src="{{ URL::asset(config('master.aplikasi.author').'/home/'.$halaman->link.'/'.$halaman->kode.'/jquery-crud.js') }}"></script>
<script src="{{ URL::asset(config('master.aplikasi.author').'/laporan/ajax.js') }}"></script>
<script src="{{url('frontend/js/jquery.js')}}"></script>
<script type="text/javascript" src="{{ URL::asset('backend/js/formplugins/select2/select2.bundle.js') }}"></script>
<script src="{{url('frontend/js/plugins.min.js')}}"></script>
<script src="{{url('frontend/js/functions.js')}}"></script>
// Add this script to handle data input with loading spinner and AJAX submit with CSRF token
<script>
    $(document).ready(function() {
		$('input[name="data"]').on('change', function() {
            var data = $(this).val();
			
			var dataId = $(this).data('id');
			var th = $(this).data('th');
            $('#loading-spinner'+dataId+th).show();
			document.getElementById('loading-spinner'+dataId+th).className = 'fa fa-spinner fa-spin';
			
            $.ajax({
                url: "{{ url('keloladata/save') }}",
                type: 'POST',
                data: {
                    _token: '{{ csrf_token() }}',
					elemen_id: dataId,
                    jumlah: data,
					tahun:th
                },
                success: function(response) {
                    // Hide loading spinner
                    // Mengubah isi class dengan JavaScript berdasarkan ID
					document.getElementById('loading-spinner'+dataId+th).className = 'fa fa-check';

                    // You can handle the response from the server here
                    console.log('Data submitted successfully:', response);
                },
                error: function(xhr, status, error) {
                    // Hide loading spinner in case of error
                    $('#loading-spinner'+dataId+th).hide();

                    // Handle errors here
                    console.error('Error submitting data:', error);
                }
            });
        });
	});
</script>
@endpush
@push('css')
<link rel="stylesheet" media="screen, print" href="{{ URL::asset('backend/css/formplugins/select2/select2.bundle.css') }}">
<link rel="stylesheet" href="{{url('frontend/css/magnific-popup.css')}}" type="text/css" />
@include('backend.home.datatable-css')
@endpush
