@extends('layouts.master')

@section('content')
<div class="main">
    <div class="main-content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="panel">
                        <div class="panel-heading">
                            <h2>ADD MATERI</h2>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-8">
                                    INI UNTUK FORM ADD
                                    <form action="{{route('posts.create')}}" method="POST" enctype="multipart/form-data"> 
                                            <!-- helper token, setiap file yang di sabmut di laravel di wajib kan untuk adanya tokel  -->
                                            
                                            <!-- has-error artisan form validation, pertmuan ke 17 -->
                                            <div class="form-group"> 
                                                <label for="exampleInputEmail1">TITLE </label>
                                                <input name="title" type="text" class="form-control" id="exampleInputEmail1" 
                                                aria-describedby="emailHelp" placeholder="Title" value="">
                                               
                                            </div> 

                                            <div class="form-group">
                                                <label for="exampleFormControlTextarea1">Content</label>
                                                <textarea name="content" class="form-control" id="content" rows="3"></textarea>
                                            </div>

                                            <div class="col-md-4">
                                            INI UNTUK THUMBNAIL  
                                            <div class="input-group">
                                                <span class="input-group-btn">
                                                    <a id="lfm" data-input="thumbnail" data-preview="holder" class="btn btn-primary">
                                                    <i class="fa fa-picture-o"></i> Choose
                                                    </a>
                                                </span>
                                                <input id="thumbnail" class="form-control" type="text" name="thumbnail">
                                                </div>
                                                <img id="holder" style="margin-top:15px;max-height:100px;">
                                                
                                                <div class="input-group">
                                                    <a href="/" class="btn btn-success">Kembali</a>
                                                    <input type="submit" class="btn btn-info" value="Submit"> 
                                                </div>
                                            </div>
                                        </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
 </div>

@stop


@section('footer')
<!-- kode untuk upload thumbnail foto dll dengan laravel fiel manager  -->
<!-- <script src="/vendor/laravel-filemanager/js/lfm.js"></script>  -->

<!-- kode untuk content menjadi dinamis -->
<script>
        ClassicEditor
            .create( document.querySelector( '#content' ) )
            .catch( error => {
                console.error( error );
            } );

 // kode untuk upload thumbnail foto dll dengan laravel fiel manager
    //         $(document).ready(function(){
    //         $('#lfm').filemanager('image');
    //     });
     </script>
@stop 
