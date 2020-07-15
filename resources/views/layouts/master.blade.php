<!doctype html>
<html lang="en">

<head>
	<title>Amir Sy Laravel</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<!-- VENDOR CSS -->
	<link rel="stylesheet" href="{{asset('admin/assets/vendor/bootstrap/css/bootstrap.min.css')}}"> 
	<link rel="stylesheet" href="{{asset('admin/assets/vendor/font-awesome/css/font-awesome.min.css')}}">
	<link rel="stylesheet" href="{{asset('admin/assets/vendor/linearicons/style.css')}}">
    <!-- <link rel="stylesheet" href="{{asset('admin/assets/vendor/chartist/css/chartist-custom.css')}}"> -->
    <!-- MAIN CSS -->
	<link rel="stylesheet" href="{{asset('admin/assets/css/main.css')}}">
	<!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
	<link rel="stylesheet" href="{{asset('admin/assets/css/demo.css')}}">
	<!-- GOOGLE FONTS -->
	<!-- pertemuan ke ke 24 TOASRT alerm ketika tombol delete di klik  -->
	<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">

	<!-- pertemuan ke 30 datatabel  -->
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css">
	
	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
	<!-- ICONS -->
	<link rel="apple-touch-icon" sizes="76x76" href="{{asset('admin/assets/img/apple-icon.png')}}">
	<link rel="icon" type="image/png" sizes="96x96" href="{{asset('admin/assets/img/favicon.png')}}">
	<!-- Pertemuan ke 29 , pasang css CKEditor  -->
	<style>
		/* :host ::ng-deep .ck-editor__editable_inline {
 		   min-height: 500px;
			} */
			.ck-editor__editable {
			    min-height: 300px;
				}
	</style>
	@yield('header') 
</head>
<body>
	<!-- WRAPPER -->
	<div id="wrapper">
		<!-- NAVBAR -->

		@include('layouts.includes._navbar')
		
		<!-- END NAVBAR -->
		<!-- LEFT SIDEBAR -->
		
        @include('layouts.includes._sidebar') 

		<!-- END LEFT SIDEBAR -->
		<!-- MAIN -->
        
		@yield('content')
        
		<!-- END MAIN -->
		<div class="clearfix"></div>
		<footer>
			<div class="container-fluid">
				<p class="copyright">Shared by <i class="fa fa-love"></i><a href="https://bootstrapthemes.com">BootstrapThemes</a>
				</p>
			</div>
		</footer>
	</div>
	<!-- END WRAPPER -->
	<!-- Javascript -->
	<script src="{{asset('admin/assets/vendor/jquery/jquery.min.js')}}"></script>
	<script src="{{asset('admin/assets/vendor/bootstrap/js/bootstrap.min.js')}}"></script>
	<script src="{{asset('admin/assets/vendor/jquery-slimscroll/jquery.slimscroll.min.js')}}"></script>
	<!-- <script src="{{asset('admin/assets/vendor/jquery.easy-pie-chart/jquery.easypiechart.min.js')}}"></script>
	<script src="{{asset('admin/assets/vendor/chartist/js/chartist.min.js')}}"></script> -->
	<script src="{{asset('admin/assets/scripts/klorofil-common.js')}}"></script>
	<!-- pertremaun ke 24 fiel CDN dari sweetalert.js  // langkah pertama  -->
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<!-- toasrt alert -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
	<!-- CKEditor peertemuan ke 29  -->
	<script src="https://cdn.ckeditor.com/ckeditor5/12.4.0/classic/ckeditor.js"></script>	
	 <!-- datatable	 -->
	<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>
	<!-- toastr -->
	<script>
		@if(Session::has('sukses'))
			toastr.success("{{Session::get('sukses')}}", "Sukses") // meenampilkan pesan yang di lempar dari controller ,,, di koneksikan ke controller delete sukses berhasil di hapus 
		@endif
	</script>

	
	@yield('footer')


</body>
</html>
