@extends('layouts.master')

@section('content')
    <div class="main">
        <div class="main-content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel">
							<div class="panel-heading">
								<h3 class="panel-title">DATA MAHASISWA</h3> 
                                   <!-- <div class="right">  -->
                                   <div class="box-tools pull-right"> 
                                        <!-- pertemuan ke 23 penamhan export PDF dan Excel  -->
                                         <a href="/siswa/exportexcel" class="btn btn-sm btn-primary">Export Excel</a> 
                                         <a href="/siswa/exportpdf" class="btn btn-sm btn-primary">Export PDF</a>     

                                          <button type="button" class="btn" data-toggle="modal" 
                                                 data-target="#exampleModal"><i class="lnr lnr-plus-circle"></i>
                                         </button>
                                         
                                         <!-- <button type="button" class="btn btn-sm btn-primary" data-toggle="modal" data-target="#exampleModal">TAMBAH DATA SISWA</button> -->
                                    </div>                    
                                </div>
								<div class="panel-body">
									<table class="table table-bordered table-striped" id="datatable">
						 				<thead>
											<tr>
                                                <th>No</th>
                                                <th>NAMA DEPAN</th>
                                                <th>NAMA BELAKANG</th>
                                                <th>JENIS KELAMIN</th>
                                                <th>AGAMA</th>                            
                                                <th>ALAMAT</th>
                                                <th>RATA2 NILAI</th>
                                                <th> </th>
                                                <th> </th>
                                                <th> </th>
											</tr>
										</thead>
										<tbody>
                                        <!-- loping untuk menampilkan data -->
                                         @foreach($data_siswa as $siswa) 
                                            <tr>
                                                <td width='10'>{{$loop -> index +1}}</a></td>
                                                <td width='10'><a href="/siswa/{{$siswa->id}}/profile">{{$siswa->nama_depan}}</a></td>
                                                <td width='10'><a href="/siswa">{{$siswa->nama_belakang}}</a></td>
                                                <td width='10'>{{$siswa->jenis_kelamin}}</td>
                                                <td width='10'>{{$siswa->agama}}</td>
                                                <td width='400'>{{$siswa->alamat}}</td>
                                                <td width='10'>{{$siswa->rataRataNilai()}}</td>
                                                <td width='10'><a href="/siswa/{{$siswa->id}}/profile" class="glyphicon glyphicon-list-alt"> </a>  </td>
                                                <td width='10'><a href="/siswa/{{$siswa->id}}/edit" class='glyphicon glyphicon-edit' aria-hidden='true'> </a> </td>
                                                <td width='10'><a href="#" class='glyphicon glyphicon-trash delete' aria-hidden='true' siswa-id="{{$siswa->id}}"> </a> </td>
                                                <!-- <td>
                                                    <a href="/siswa/{{$siswa->id}}/profile" class="btn btn-primary btn-sm">Detail</a>
                                                    <a href="/siswa/{{$siswa->id}}/edit" class="btn btn-warning btn-sm">Edit</a>
                                                    <a href="#" class="btn btn-danger btn-sm delete" siswa-id="{{$siswa->id}}">Delete</a>
                                                </td> -->
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
                        <!-- enctype="multipart/form-data" di gunakan untuk mengupload gambar biar gambar bisa sukses dan tidak string -->
                        <form action="/siswa/create" method="POST" enctype="multipart/form-data"> 
                                
                                <!-- helper token, setiap file yang di sabmut di laravel di wajib kan untuk adanya tokel  -->
                                {{csrf_field()}}
                                
                                <!-- has-error artisan form validation, pertmuan ke 17 -->
                                <div class="form-group{{$errors->has('nama_depan') ? 'has-error' : ''}}"> 
                                    <label for="exampleInputEmail1">Nama Depan </label>
                                    <input name="nama_depan" type="text" class="form-control" id="exampleInputEmail1" 
                                    aria-describedby="emailHelp" placeholder="Nama Depan" value="{{old('nama_depan')}}">
                                <!-- pertemuan ke 17 buat percabangan -->
                                <!-- untuk menampilkan error di form tambah siswa nama depan  -->
                                    @if($errors->has('nama_depan'))
                                        <span class="help-block">{{$errors->first('nama_depan')}}</span> 
                                    @endif
                                </div>

                                <div class="form-group{{$errors->has('nama_belakang') ? 'has-error' : ''}}">
                                    <label for="exampleInputEmail1">Nama Belakang </label>
                                    <input name="nama_belakang" type="text" class="form-control" id="exampleInputEmail1" 
                                    aria-describedby="emailHelp" placeholder="Nama Belakang" value="{{old('nama_belakang')}}">
                                    @if($errors->has('nama_belakang'))
                                        <span class="help-block">{{$errors->first('nama_belakang')}}</span> 
                                    @endif
                                </div>

                                <div class="form-group{{$errors->has('email') ? 'has-error' : ''}}">
                                    <label for="exampleInputEmail1">Email </label>
                                    <input name="email" type="email" class="form-control" id="exampleInputEmail1" 
                                    aria-describedby="emailHelp" placeholder="Email" value="{{old('email')}}">
                                    @if($errors->has('email'))
                                        <span class="help-block">{{$errors->first('email')}}</span> 
                                    @endif
                                </div>

                                <div class="form-group{{$errors->has('jenis_kelamin') ? 'has-error' : ''}}">
                                    <label for="exampleFormControlSelect1">Pilih Jenis Kelamin</label>
                                    <select name="jenis_kelamin" class="form-control" id="exampleFormControlSelect1">
                                    <option value="L"{{(old('jenis_kelamin') == 'L') ? ' selected' : ''}}>Laki-Laki</option>
                                    <option value="P"{{(old('jenis_kelamin') == 'P') ? ' selected' : ''}}>Perempuan</option>
                                    </select>
                                    @if($errors->has('jenis_kelamin'))
                                        <span class="help-block">{{$errors->first('jenis_kelamin')}}</span> 
                                    @endif
                                </div>

                                <div class="form-group{{$errors->has('agama') ? 'has-error' : ''}}">
                                    <label for="exampleInputEmail1">Agama </label>
                                    <input name="agama" type="text" class="form-control" id="exampleInputEmail1" 
                                    aria-describedby="emailHelp" placeholder="agama" value="{{old('agama')}}">
                                    @if($errors->has('agama'))
                                        <span class="help-block">{{$errors->first('agama')}}</span> 
                                    @endif
                                </div>

                                <div class="form-group">
                                    <label for="exampleFormControlTextarea1">Alamat</label>
                                    <textarea name="alamat" class="form-control" id="exampleFormControlTextarea1" rows="3">{{old('alamat')}}</textarea>
                                </div>   

                                <div class="form-group{{$errors->has('avatar') ? 'has-error' : ''}}">
                                    <label for="exampleFormControlTextarea1">avatar</label>
                                    <input type="file" name="avatar" class="form-control">
                                    @if($errors->has('avatar'))
                                        <span class="help-block">{{$errors->first('avatar')}}</span> 
                                    @endif
                                </div>                              
       
                            </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
@stop
<!-- pertemuan ke 24 sweealert  -->
@section('footer')
<script>
    // datatable
    $(document).ready(function() {
        $('#datatable').DataTable();

            $('.delete').click(function(){
                 var siswa_id = $(this).attr('siswa-id');
                    // alert(siswa_id);
                    swal({ 
                        title: "Yakin ?",
                        text: "Mau dihapus data siswa dengan id "+siswa_id + " ??",
                        icon: "warning",
                        buttons: true,
                        dangerMode: true,
                    })
                    .then((willDelete) => {
                        console.log(willDelete);
                            if (willDelete) { 
                            window.location = "/siswa/"+siswa_id+"/delete";
                            }
                    });
                });

    });
     
</script>
@stop 
