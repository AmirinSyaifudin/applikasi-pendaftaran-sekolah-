@extends('layouts.master')

@section('header')
<link href="//cdnjs.cloudflare.com/ajax/libs/x-editable/1.5.0/bootstrap3-editable/css/bootstrap-editable.css"
rel="stylesheet"/>
@stop

@section('content')
<div class="main">
			<!-- MAIN CONTENT -->
			<div class="main-content">
				<div class="container-fluid">

					@if(session('sukses'))
						<div class="alert alert-success" role="alert">
							{{session('sukses')}}
						</div>
					@endif

					@if(session('error'))
						<div class="alert alert-danger" role="alert">
							{{session('error')}}
						</div>
					@endif

					<div class="panel panel-profile">
						<div class="clearfix">
							<!-- LEFT COLUMN -->
							<div class="profile-left">
								<!-- PROFILE HEADER -->
								<div class="profile-header">
									<div class="overlay"></div>
									<div class="profile-main">
										<img src="{{$siswa->getAvatar()}}" class="img-circle" alt="Avatar">
										<h3 class="name">{{$siswa->nama_depan}}</h3>
										<span class="online-status status-available">Available</span>
									</div>
									<div class="profile-stat">
										<div class="row">
											<div class="col-md-4 stat-item">
												{{$siswa->mapel->count()}} <span>MATA PELAJARAN</span>
											</div>
											<div class="col-md-4 stat-item">
												{{$siswa->rataRataNilai()}}<span>RATA2 NILAI</span>
											</div>
											<div class="col-md-4 stat-item">
												2174 <span>Points</span>
											</div>
										</div>
									</div>
								</div>
								<!-- END PROFILE HEADER -->
								<!-- PROFILE DETAIL -->
								<div class="profile-detail">
									<div class="profile-info">
										<h4 class="heading">Detail Data Diri</h4>
										<ul class="list-unstyled list-justify">
											<li>Jenis Kelamin <span>{{$siswa->jenis_kelamin}}</span></li>
											<li>Agama <span>{{$siswa->agama}}</span></li>
                                            <li>Alamat <span>{{$siswa->alamat}}</span></li>

										<!-- <li>Website <span><a href="https://www.themeineed.com">www.themeineed.com</a></span></li> -->
                                        </ul>
                                    </div>

								<div class="text-center">
									<a href="/siswa" class="btn btn-success">Kembali</a>
									<a href="/siswa/{{$siswa->id}}/edit" class="btn btn-warning">Edit Profile</a>
								</div>
							</div>
						<!-- END PROFILE DETAIL -->
					</div>
				<!-- END LEFT COLUMN -->
				<!-- RIGHT COLUMN -->

			<div class="profile-right">
				<!-- Button trigger modal -->
				<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
					Tambah Nilai Mahasiswa
				</button>
						<!-- END AWARDS -->
						<!-- TABBED CONTENT -->
						<div class="panel">
							<div class="panel-heading">
								<h3 class="panel-title">MATA PELAJARAN</h3>
							</div>
								<div class="panel-body">
									<table class="table table-striped">
										<thead>
											<tr>
												<th>KODE</th>
												<th>NAMA MATA KULIAH</th>
												<th>SEMESTER</th>
												<th>NILAI</th>
												<th>GURU</th>
												<th>AKSI</th>
											</tr>
										</thead>
									<tbody>

									<!-- memanggil lerasi langsung  -->
									@foreach($siswa->mapel as $mapel)
											<tr>
												<td>{{$mapel->kode}}</td>
												<td>{{$mapel->nama}}</td>
												<td>{{$mapel->semester}}</td>
												<!-- data-pk="{{$mapel->id}}" artinya primari key -->
												<td>
													<a href="#" class="nilai" data-type="text" data-pk="{{$mapel->id}}"
													data-url="/api/siswa/{{$siswa->id}}/editnilai" data-title="Masukkan Nilai">
													{{$mapel->pivot->nilai}}</a>
												</td>
												<!-- menampilkan data guru, menampilkan GURU dan relasi ke gurunya  -->
												<td>
													<a href="/guru/{{$mapel->guru->id}}/profile">{{$mapel->guru->nama}}</a>
												</td>
												<td>
													<a href="/siswa/{{$siswa->id}}/{{$mapel->id}}/deletenilai" class="btn btn-danger btn-sm"
													onClick="return confirm('Yakin mau dihapus..?')">Delete</a>
												</td>
											</tr>
									@endforeach
								</tbody>
							</table>
						</div>
					</div>

					<!-- untuk menampilakn grafil nilai, PERTEMUAN KE 19   -->
					<div class="panel">
						<div id="chartNilai"></div>
					</div>

					</div>
				<!-- END RIGHT COLUMN -->
				</div>
			</div>
		</div>
	</div>
	<!-- END MAIN CONTENT -->
</div>


		<!-- Modal -->
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Tambah Nilai Mahasiswa</h5>
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
									</button>
										</div>

											<div class="modal-body">
											<!-- enctype="multipart/form-data" di gunakan untuk mengupload gambar biar gambar bisa sukses dan tidak string -->
												<form action="/siswa/{{$siswa->id}}/addnilai" method="POST" enctype="multipart/form-data">
													{{csrf_field()}}
													<div class="form-group">
														<label for="mapel">Mata Pelajaran</label>
														<select class="form-control" id="mapel" name="mapel">
														<!-- Looping dari tabel mapel, data lempar dari controller -->
														<!-- terjadi error karna bentrok ada yang sama dengan variabel $mapel
														revisi
														tersambung dengan SiswaController.php-->
														@foreach($matapelajaran as $mp)
															<option value="{{$mp->id}}">{{$mp->nama}}</option>
														@endforeach
														</select>
													</div>

													<!-- has-error artisan form validation, pertmuan ke 17 -->
													<div class="form-group{{$errors->has('nilai') ? 'has-error' : ''}}">
														<label for="exampleInputEmail1">Nilai </label>
														<input name="nilai" type="text" class="form-control"
														id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Nilai"
														value="{{old('nilai')}}">
														<!-- buat percabangan -->
														<!-- untuk menampilkan error di nama depan  -->
														@if($errors->has('nilai'))
															<span class="help-block">{{$errors->first('nilai')}}</span>
														@endif
													</div>

												</div>
											<div class="modal-footer">
												<button type="submit" class="btn btn-success" data-dismiss="modal">KEMBALI</button>
												<button type="submit" class="btn btn-primary">SIMPAN</button>
										</form>
									</div>
								</div>
							</div>
						</div>
					@stop


@section('footer')
<!-- code di bawah dari Jqueri ajax pertemuan ke 20  -->
<script src="//cdnjs.cloudflare.com/ajax/libs/x-editable/1.5.0/bootstrap3-editable/js/bootstrap-editable.min.js"></script>

<!-- code di bawah sama artinya di sisipkan di bawa file master.blade.php -->
<script src="https://code.highcharts.com/highcharts.js"></script>


<script>

Highcharts.chart('chartNilai', {
    chart: {
        type: 'column'
    },
    title: {
        text: 'LAPORAN NILAI MAHASISWA'
    },
    subtitle: {
        text: 'Source: By Amirin Syaifudin.com'
    },
    xAxis: {
        categories: {!!json_encode($categories)!!},
        crosshair: true
    },

    yAxis: {
        min: 0,
        title: {
            text: 'Nilai Mahasiswa (mm)'
        }
    },
    tooltip: {
        headerFormat: '<span style="font-size:10px">{point.key}</span><table>',

        footerFormat: '</table>',
        shared: true,
        useHTML: true
    },
    plotOptions: {
        column: {
            pointPadding: 0.2,
            borderWidth: 0
        }
    },
    series: [{
        name: 'Nilai',
        data: {!!json_encode($data)!!}

	}]
});

$(document).ready(function() {
        $('.nilai').editable();
    });

</script>
@stop

