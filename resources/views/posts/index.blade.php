@extends('layouts.master')

@section('content')
    <div class="main">
        <div class="main-content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel">
							<div class="panel-heading">
								<h3 class="panel-title">POSTS</h3> 
                                   <div class="right"> 

                                        <!-- pertemuan ke 29 add post        -->                                   
                                         <a href="{{route('posts.add')}}" class="btn btn-sm btn-primary">ADD NEW POSTS</a>       
                                    </div>                    
                                </div>
								<div class="panel-body">
									<table class="table table-hover" id="datatable">
						 				<thead>
											<tr>
                                                <th>ID</th>
                                                <th>TITLE</th>
                                                <th>USER</th>
                                                <th> </th> 
                                                <th> </th> 
                                                <th> </th>                            
											</tr>
										</thead>
										<tbody>
                                        <!-- LOOPING terdahulu... YANG KITA LEMPPAR POST  -->
                                         @foreach($posts as $post)
                                            <tr>
                                                <td width='10'>{{$post->id}}</a></td>
                                                <td width='600'>{{$post->title}}</a></td>

                                                <!-- relasi dari post dan user, file title dari tabel post dan nama dari tabel user   -->
                                                <td width='10'>{{$post->user->name}}</td> 
                                                <td width='5'>
                                                    <!-- target="_blank" artinya ketika di klik membuka tag baru  -->
                                                    <a target="_blank" href="{{route('site.single.post',$post->slug)}}" class="btn btn-info btn-sm">View</a>  
                                                </td>
                                                <td width='5'><a href="" class="btn btn-warning btn-sm">Edit</a></td>
                                                <td width='5'><a href="#" class="btn btn-danger btn-sm delete" >Delete</a></td>
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

    
@stop
      

<!-- pertemuan ke 24 sweealert  -->
@section('footer')
    <script>
    // datatable 
    $(document).ready(function(){
        $('#datatable').DataTable();

    
         $('.delete').click(function(){
             var post_id = $(this).attr('post-id');
             // alert(post_id);
                swal({
                    title: "Yakin ?",
                    text: "Mau dihapus data siswa dengan id "+post_id + " ??",
                    icon: "warning",
                    buttons: true,
                    dangerMode: true,
                })
                .then((willDelete) => {
                    console.log(willDelete);
                     if (willDelete) { 
                        window.location = "/posts/"+post_id+"/delete";
                     }
                });
         });


        });

    </script>
@stop 
