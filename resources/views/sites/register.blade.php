@extends('layouts.frondend')

@section('content')
<section class="banner-area relative about-banner" id="home">	
				<div class="overlay overlay-bg"></div>
				<div class="container">				
					<div class="row d-flex align-items-center justify-content-center">
						<div class="about-content col-lg-12">
							<h1 class="text-white">
								Pendaftaran				
							</h1>	
							<p class="text-white link-nav"><a href="index.html">Home </a>  <span class="lnr lnr-arrow-right"></span>  <a href="about.html"> About Us</a></p>
						</div>	
					</div>
				</div>
			</section>

<!-- Style unset untuk menghilangkan backgraund gambar  -->
<section class="search-course-area relative" style="background: unset;"> 
				<!-- <div class="overlay overlay-bg"></div> // untuk backgraund warna -->
				<div class="container">
					<div class="row justify-content-between align-items-center">
						<div class="col-lg-3 col-md-6 search-course-left">
							<h1>
								Pendaftaran Online<br>
								Sekolah Islam Madinah
							</h1>
								<p>
									Dengan Kurikulum yang Update sesuai kebutuhan pasar, kami menjamin lulusan akan dengan mudah terserap didunia kerja!
								</p>
						</div>
					<div class="col-lg-49 col-md-6 search-course-right section-gap">

						<!-- <form class="form-wrap" action="#"> di ganti dengan kode di bawah-->
						{!! Form::open(['url' => '/postregister','class' => 'form-wrap']) !!}
							<h4 class="pb-20 text-center mb-30">Formulir Pendaftaran Siswa</h4>	
							<!-- input form laravel colletive 	 -->
							{!! form::text('nama_depan','',['class' => 'form-control','placeholder' => 'Nama Lengkap']) !!}
							{!! form::text('nama_belakang','',['class' => 'form-control','placeholder' => 'Nama Belakang']) !!}
							{!! form::text('agama','',['class' => 'form-control','placeholder' => 'Agama']) !!}
							{!! form::textarea('alamat','',['class' => 'form-control','placeholder' => 'Alamat']) !!}
							<div class="form-select" id="service-select">
								{!! Form::select('jenis_kelamin', ['' => 'Pilih Jenis Kelamin','L' => 'Laki-Laki', 'P' => 'Perempuan'],'L'); !!}
							</div>
							{!! form::email('email','',['class' => 'form-control','placeholder' => 'Email']) !!}
							{!! form::password('password',['class' => 'form-control','placeholder' => 'Password']) !!}
							<!-- <input type="text" class="form-control" name="name" placeholder="Your Name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Your Name'">
							<input type="phone" class="form-control" name="phone" placeholder="Your Phone Number" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Your Phone Number'">
							<input type="email" class="form-control" name="email" placeholder="Your Email Address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Your Email Address'"> -->
							
							<!-- <div class="form-select" id="service-select">
								<select style="display: none;">
									<option datd-display="">Choose Course</option>
									<option value="1">Course One</option>
									<option value="2">Course Two</option>
									<option value="3">Course Three</option>
									<option value="4">Course Four</option>
								</select><div class="nice-select" tabindex="0"><span class="current">Choose Course</span><ul class="list"><li data-value="Choose Course" class="option selected focus">Choose Course</li><li data-value="1" class="option">Course One</li><li data-value="2" class="option">Course Two</li><li data-value="3" class="option">Course Three</li><li data-value="4" class="option">Course Four</li></ul></div>
							</div>		
							-->
							<input type="submit" class="primary-btn text-uppercase" value="Kirim" style="text-align: center; ">
						<!-- </form> -->
						{!!Form::close()!!}
					</div>
				</div>
			</div>	
	</section>
@stop