@extends('layouts.master')

@section('content')
<div class="main">
        <div class="main-content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-6">

                        <div class="panel">
							<div class="panel-heading">
								<h3 class="panel-title">RANGKING 5 BESAR </h3>
							</div>
								<div class="panel-body">
									<table class="table table-striped">
										<thead>
											<tr>
												<th>RANGKING</th>
												<th>NAMA</th>
                                                <th>NILAI</th>
											</tr>
										</thead>
									<tbody>

                                        <!-- memanggil lerasi langsung  --> 
                                            <!-- untuk menentukan ranking 5 besar  -->
                                            @php 
                                                $ranking = 1; 
                                            @endphp
                                                
                                                @foreach($siswa as $s)
                                                <tr>
                                                    <td>{{$ranking}}</td>
                                                    <td>{{$s->nama_depan}} {{$s->nama_belakang}}</td> 
                                                    <td>{{$s->rataRataNilai}}</td> 
                                                </tr>
                                                
                                            @php 
                                                $ranking++;
                                            @endphp

                                                @endforeach
                                        </tbody> 
                                    </table>
                                </div>
                            </div>
                        </div>
                        
                        <!-- pertemuan ke 22 helper custom function  -->
                        <div class="col-md-3">
									<div class="metric">
                                    
										<span class="icon"><a href="/siswa"><i class="fa fa-user"></a></i></span>
										<p>
                                        <!-- helper di ambil dari Global.php totalsiswa -->
											<span class="number">{{totalSiswa()}}</span> 
											<span class="title"><a href="/siswa">Total Siswa</a></span>
										</p>
									</div>
								</div>


                                <div class="col-md-3">
									<div class="metric">
										<span class="icon"><i class="fa fa-user"></i></span>
										<p>
                                        <!-- helper di ambil dari Global.php totalsiswa -->
											<span class="number">{{totalGuru()}}</span> 
											<span class="title">Total Guru</span>
										</p>
									</div>
								</div>

                    </div>
                </div>
            </div>
        </div>
                


@stop