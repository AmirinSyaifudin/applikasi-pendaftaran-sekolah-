@extends('layouts.master')

@section('content')
<!-- pembungkus untuk memisahkan template dan content  -->
<div class="main">
        <div class="main-content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel">
                            <div class="panel-heading">
                                <h3 class="panel-title">Input</h3>
                            </div>
                        <div class="panel-body">
                                <form action="" method="POST" enctype="multipart/form-data">
                                    {{csrf_field()}}





@stop
      