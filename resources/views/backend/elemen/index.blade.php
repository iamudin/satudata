@extends('backend.home.index')
@push('title', ucwords(strtolower($halaman->nama)))
@push('header', ucwords(strtolower($halaman->nama)))
@push('tombol')
<a href="#tambah" class="btn btn-sm btn-primary tambah">
	Tambah  <i class="fa fa-plus-circle"></i>
</a>
@endpush
@section('content')
	<div class="panel-container show">
		<div class="panel-content">
			<table id="datatable" class="table table-bordered table-hover table-striped w-100">
				<thead class="bg-primary-600">
					<tr>
						<th class="width-1">No</th>
						<th class="text-center">Elemen/Sub Elemen</th>
						<th class="text-center">Meta Data</th>
						<th class="text-center">Jadwal Rilis</th>
						<th class="text-center">Kelola</th>
						<th width="50px" class="text-center" tabindex="0" rowspan="1" colspan="1">Aksi</th>
					</tr>
				</thead>
			</table>
		</div>
	</div>
	<div class="modal fade" id="editModal" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<form id="editForm">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title">Edit Data</h5>
						<button type="button" class="close" data-dismiss="modal">
							<span>&times;</span>
						</button>
					</div>

					<div class="modal-body">
						<input type="hidden" id="id" name="id">

						<div class="form-group">
							<label>Bidang</label>
							<input type="text" class="form-control" id="bidang" name="bidang" required>
						</div>

						<div class="form-group">
							<label>Penanggung Jawab</label>
							<input type="text" class="form-control" id="penanggung_jawab" name="penanggung_jawab" required>
						</div>
						<div class="form-group">
							<label>Cakupan Data</label>
							<input type="text" class="form-control" id="cakupan_data" name="cakupan_data" required>
						</div>
					</div>

					<div class="modal-footer">
						<button type="submit" class="btn btn-primary">Update</button>
						<button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
					</div>
				</div>
			</form>
		</div>
	</div>

@endsection
@push('js')
@include('backend.home.datatable-js')
<script type="text/javascript" src="{{ URL::asset(config('master.aplikasi.author') . '/home/' . $halaman->link . '/' . $halaman->kode . '/jquery-crud.js') }}"></script>
<script type="text/javascript" src="{{ URL::asset(config('master.aplikasi.author') . '/' . $halaman->kode . '/datatables.js') }}"></script>
<script type="text/javascript" src="{{ URL::asset(config('master.aplikasi.author') . '/' . $halaman->kode . '/jquery.js') }}"></script>
<script type="text/javascript" src="{{ URL::asset('backend/js/formplugins/select2/select2.bundle.js') }}"></script>
<script>
$(document).on('click', '.editBtn', function () {
    $('#id').val($(this).data('id'));
    $('#bidang').val($(this).data('bidang'));
    $('#penanggung_jawab').val($(this).data('penanggung_jawab'));
    $('#cakupan_data').val($(this).data('cakupan_data'));

    $('#editModal').modal('show');
});
</script>
<script>
$('#editForm').submit(function (e) {
    e.preventDefault();

    $.ajax({
        url: '{{ route('elemen.updatemeta') }}', // ganti sesuai route
        type: 'POST',
        data: $(this).serialize(),
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        },
        success: function (res) {
            alert('Data berhasil diupdate');
            $('#editModal').modal('hide');
			$('#datatable').DataTable().ajax.reload();
        },
        error: function (err) {
            alert('Terjadi kesalahan');
        }
    });
});
</script>

@endpush
@push('css')
<link rel="stylesheet" media="screen, print" href="{{ URL::asset('backend/css/formplugins/select2/select2.bundle.css') }}">
<link rel="stylesheet" media="screen, print" href="{{ asset('backend/css/formplugins/summernote/summernote.css') }}">
@include('backend.home.datatable-css')
@endpush
