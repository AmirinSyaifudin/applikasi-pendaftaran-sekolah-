@extends('layouts.master')

@section('content')
<div class="main">
    <div class="main-content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="panel">
                        <div class="panel-heading">
                            <h2 class="panel-title"> DATA MATERI</h2>

                                <div class="right">
                                    <a href="{{route('materi.add')}}" class="btn btn-sm btn-primary">ADD MATERI</a>
                                </div>
                            
                        </div>
                <div class="panel-body">
                        <table class="table table-bordered table-striped" id="datatable">
						 				<thead>
											<tr>
                                                <th>No</th>
                                                <th>TITLE</th>
                                                <th>GAMBAR</th>  
                                                <th>USER ID</th>                            
                                                <th>ACTION</th>
                                                <th></th>
                                                <th></th>
											</tr>
										</thead>
										<tbody>
                                        <!-- loping untuk menampilkan data -->
                                        @foreach($data_materi as $materi)
                                        <tr>
                                            <td>{{$loop -> index +1}}</td>
                                            <td>{{$materi->title}}</td>
                                            <td></td>
                                            <td>{{$materi->gambar}}</td>
                                            <td width='10'><a href="" class="glyphicon glyphicon-list-alt"> </a>  </td>
                                            <td width='10'><a href="" class='glyphicon glyphicon-edit' aria-hidden='true'> </a> </td>
                                            <td width='10'><a href="#" class='glyphicon glyphicon-trash delete' aria-hidden='true' siswa-id=""> </a> </td>
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
</div>

@stop


@section('footer')
<script>
    // datatable
    $(document).ready(function() {
        $('#datatable').DataTable();

        

    });
     
</script>
@stop 