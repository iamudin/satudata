{!! Form::open(array('id' => 'frmOji', 'route' => [$halaman->kode.'.update', $data->id], 'class' => 'form account-form', 'method' => 'PUT', 'files' => 'true')) !!}
<div class="row">
    <div class="col-md-12">
        <p>
            {!! Form::label('jumlah', 'Masukkan Jumlah', array('class' => 'control-label')) !!}
            <small class="text-danger"> * Jika bilangan berkoma, gunakan titik (.)</small>
            {!! Form::text('jumlah', $data->jumlah, array('id' => 'jumlah', 'class' => 'form-control', 'autocomplete' => 'off')) !!}
        </p>
        <p>
            {!! Form::label('tahun', 'Masukkan Tahun', array('class' => 'control-label')) !!}
            {!! Form::text('tahun', $data->tahun, array('id' => 'datepicker', 'class' => 'form-control datepicker', 'autocomplete' => 'off')) !!}
        </p>
    </div>
    @if($data->file)
        <div class="col-md-12">
            <img src="{{$data->file->url_stream.'?t='.time() ?? '#'}}" style="background: transparent url({{asset('backend/img/loading.gif')}}) no-repeat center; width: 100%"/>
        </div>
    @endif
	{!! Form::hidden('table-list', 'datatable', array('id' => 'table-list')) !!}
</div>
<div class="row">
	<div class="col-md-12">
        <span class="pesan"></span>
        <div id="output"></div>
        <div class="progress">
            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100">
                <div id="statustxt">0%</div>
            </div>
        </div>
	</div>
</div>
{!! Form::close() !!}
<style>
    .select2-container {
        z-index: 9999 !important;
    }
</style>
<script src="{{ URL::asset('resources/vendor/jquery/jquery.enc.js') }}"></script>
<script src="{{ URL::asset('resources/vendor/jquery/jquery.form.js') }}"></script>
<script src="{{ URL::asset(config('master.aplikasi.author').'/home/ajax_progress.js') }}"></script>
<script src="{{ asset('backend/js/formplugins/summernote/summernote.js') }}" async=""></script>
<script type="text/javascript">
    $('.modal-title').html('<span class="fa fa-edit"></span> Ubah {{$halaman->nama}}');
    $("#datepicker").datepicker( {
        format: "yyyy", // Notice the Extra space at the beginning
        viewMode: "years", 
        minViewMode: "years"
    });
</script>
