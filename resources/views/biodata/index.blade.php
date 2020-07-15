@extends('layouts.master')

@section('content')

    <div class="main">
        <div class="main-content">
            <div class="container-fluid">
                <div class="row">

                    <div class="col-md-100s">
                        <div class="panel">
							<div class="panel-heading">
								<h3 class="panel-title">BIODATA AMIRIN SYAIFUDIN</h3>
                                 
                                 <!-- Button trigger modal -->
                                 <div class="right">
                                        <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#exampleModal"> 
                                            TAMBAH DATA BIODATA
                                        </button>
                                    </div>
                                </div>
                                
								<div class="panel-body">
									<table class="table table-hover">
										<thead>
											<tr>
                                                <th>NAMA</th>
                                                <th>TGL & LAHIR</th>
                                                <th>JENIS KELAMIN</th>
                                                <th>G. DARAH</th>                            
                                                <th>AGAMA</th>
                                                <th>STATUS</th>
                                                <th>PEKERJAAN</th>
                                                <th>NEGARA</th>
                                                <!-- <th>GAMBAR</th>-->
                                                <th>ALAMAT</th>
                                                <th>AKSI</th>
											</tr>
										</thead>
										<tbody>
                                       @foreach($data_biodata as $biodata)
                                            <tr>
                                                <td>{{$biodata->nama_lengkap}}</td>
                                                <td>{{$biodata->tgl_lahir}}</td>
                                                <td>{{$biodata->jenis_kelamin}}</td>
                                                <td>{{$biodata->golongan_darah}}</td>
                                                <td>{{$biodata->agama}}</td>
                                                <td>{{$biodata->status}}</td>
                                                <td>{{$biodata->pekerjaan}}</td>
                                                <td>{{$biodata->kewarganegaraan}}</td>
                                                <!-- <td>{{$biodata->gambar}}</td> -->
                                                <td>{{$biodata->alamat}}</td>
                                                <td>
                                                    <a href="/biodata/{{$biodata->id}}/edit" class="btn btn-warning btn-sm">Edit</a>
                                                    <a class="btn btn-danger btn-sm">Delete</a>
                                                </td>
                                            </tr>
                                       @endforeach
									</tbody>
						    	</table>
						    </div>	
                        </div>

                    </div>
                </div>
            </div>
        </div>

    <!-- Modal -->
   <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
            </div>
            
            <div class="modal-body">
                
            <form action="/biodata/create" method="POST">
                {{csrf_field()}}
                <div class="form-group">
                    <label for="exampleFormControlInput1">NAMA LENGKAP</label>
                    <input name="nama_lengkap" type="text" class="form-control" id="exampleFormControlInput1" placeholder="nama lengkap">
                </div>

                <div class="form-group">
                    <label for="exampleFormControlInput1">TANGGAL LAHIR</label>
                    <input name="tgl_lahir" type="text" class="form-control" id="exampleFormControlInput1" placeholder="tanggal lahir">
                </div>

                <div class="form-group">
                    <label for="exampleFormControlSelect1">JENIS KELAMIN</label>
                    <select name="jenis_kelamin" class="form-control" id="exampleFormControlSelect1">
                    <option value="L"{{(old('jenis_kelamin') == 'L') ? ' selected' : ''}}>LAKI-LAKI</option>
                    <option value="P"{{(old('jenis_kelamin') == 'P') ? ' selected' : ''}}>PEREMPUAN</option>
                    </select>
                </div>

                <div class="form-group">
                    <label for="exampleFormControlInput1">GOLONGAN DARAH</label>
                    <input name="golongan_darah" type="text" class="form-control" id="exampleFormControlInput1" placeholder="Masukkan Golongan Darah">
                </div>

                <div class="form-group">
                    <label for="exampleFormControlInput1">AGAMA</label>
                    <input name="agama" type="text" class="form-control" id="exampleFormControlInput1" placeholder="Masukkan Agama">
                </div>

                <div class="form-group">
                    <label for="exampleFormControlInput1">STATUS</label>
                    <input name="status" type="text" class="form-control" id="exampleFormControlInput1" placeholder="Masukkan Status">
                </div>

                <div class="form-group">
                    <label for="exampleFormControlInput1">PEKERJAAN</label>
                    <input name="pekerjaan" type="text" class="form-control" id="exampleFormControlInput1" placeholder=" Masukkan Pekerjaan">
                </div>

                <div class="form-group">
                    <label for="exampleFormControlInput1">KEWARGANEGARAAN</label>
                    <input name="kewarganegaraan" type="text" class="form-control" id="exampleFormControlInput1" placeholder=" Masukkan Kewarganegaraan">
                </div>

                <div class="form-group">
                    <label for="exampleFormControlInput1">EMAIL</label>
                    <input name="email" type="email" class="form-control" id="exampleFormControlInput1" placeholder="masukkan email">
                </div>

                <!-- <div class="form-group">
                    <label for="exampleFormControlInput1">GAMBAR</label>
                    <input type="file" name="gambar" class="form-control">
                </div> -->

                <!-- <div class="form-group">
                    <label for="exampleFormControlInput1">VIDEO</label>
                    <input name="video" type="text" class="form-control" id="exampleFormControlInput1" placeholder="Masukkan Link Video">
                </div> -->

                <div class="form-group">
                    <label for="exampleFormControlTextarea1">ALAMAT</label>
                    <textarea name="alamat" class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                </div>
               
              
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">SIMPAN</button>
                </form>
            </div>
            </div>
        </div>
  </div>
   
@stop
      

