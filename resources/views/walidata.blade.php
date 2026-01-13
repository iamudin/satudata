@extends('frontend.partials.app')
@section('content')
<!-- ======= Hero Section ======= -->
<section id="hero" class="d-flex flex-column justify-content-center">
  <div class="container" data-aos="zoom-in" data-aos-delay="100">
    <img src="{{asset('images/satu-data.png')}}" alt="image" style="height: 90px;">
    <p>"BERMASA" <span class="typed" data-typed-items="Bermarwah, Maju, Sejahtera"></span></p></p>

    <div class="social-links">
      <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
      <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
      <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
      <a href="#" class="youtube"><i class="bx bxl-youtube"></i></a>
    </div>
  </div>
</section><!-- End Hero -->

<main id="main">

<!-- ======= About Section ======= -->
<section id="detail" class="about">
<div class="container" data-aos="fade-up">

    <div class="section-title">
    <form class="search-big-form no-border search-shadow" method="get" action="{{url('cari#cari')}}">
        <div class="row m-0">
        <div class="col-lg-10 col-md-5 col-sm-12">
            <div class="form-group">
            <i class="ti-search"></i>
            <input name="keyword" type="text" class="form-control b-r full-width" value="" placeholder="Pencarian Data ...">
            </div>
        </div>
        <div class="col-lg-2 col-md-3 col-sm-12">
            <button type="submit" class="btn btn-primary"><i class="bx bx-search"></i> Pencarian</button>
        </div>
        </div>
    </form>
    <br>
    <h2>Data Pada e-Walidata</h2>
    <p>Publikasi Data Statistik Sektoral Daerah Kabupaten Bengkalis</p>
    </div>

    <div class="row">
        <div class="col-lg-12">
            <select id="" onchange="location = '/ewalidata?tahun='+this.value;">
                <option value="">--pilih--</option>
                @foreach(['2020', '2021', '2022', '2023', '2024', '2025'] as $year)
                    <option value="{{ $year }}" {{request('tahun') && request('tahun') == $year ? 'selected' : ''}}>{{ $year }}</option>
                @endforeach
            </select>
        </div>
    </div>

    <div class="row">
        <div class="col-lg-14">
          <table id="myTable" class="table table-bordered table-striped">
            <thead class="bg-primary-600" style="background-color: #0a58ca; color: white;">
                <tr>
                    <th style="vertical-align : middle; text-align:center;">NO SSD</th>
                    <th style="vertical-align : middle; text-align:center;">KODE INDIKATOR</th>
                    <th style="vertical-align : middle; text-align:center;">URAIAN</th>
                    <th style="vertical-align : middle; text-align:center;">SATUAN</th>
                    <th style="vertical-align : middle; text-align:center;">{{request('tahun') ? request('tahun') : date('Y')}}</th>
                </tr>
            </thead>
            <tbody>
                {{-- DataTables akan isi otomatis --}}
            </tbody>
        </table>
    </div>
    </div>
          
    </div>
  </section><!-- End About Section -->

</main>

{{-- jQuery --}}
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>

{{-- Bootstrap JS --}}
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

{{-- DataTables JS --}}
<script src="https://cdn.datatables.net/1.13.8/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.13.8/js/dataTables.bootstrap5.min.js"></script>

    <script>
        $(document).ready(function () {
            $('#myTable').DataTable({
                processing: false,
                serverSide: false,
                ajax: {
                    method: 'post',
                    url:'/walidata',
                       data: function (d) {
                        d._token = "{{csrf_token()}}";
                        d.tahun = '{{request('tahun', date('Y'))}}'; // default tahun sekarang
                    }
                },
                
                pageLength: 10, // default 10 row per page
                columns: [
                    {
                     data: 'DT_RowIndex',
                        name: 'DT_RowIndex'
                    },
                    { data: 'kodeindikator', name: 'kodeindikator' },
                    { data: 'uraian_indikator', name: 'uraian_indikator' },
                    { data: 'satuan', name: 'satuan' },
                    { data: 'data', name: 'data' },
                ]
            });
        });
    </script>
@endsection