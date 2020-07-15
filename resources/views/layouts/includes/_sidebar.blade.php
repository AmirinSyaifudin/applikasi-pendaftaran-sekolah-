		<div id="sidebar-nav" class="sidebar">
			<div class="sidebar-scroll">
				<nav>
					<ul class="nav">
						<li><a href="/dashboard" class="active"><i class="lnr lnr-home"></i> <span>Dashboard</span></a></li>
						
						@if(auth()->user()->role == 'admin')
						<li><a href="/biodata" class="active"><i class="lnr lnr-home"></i> <span>BIODATA</span></a></li>
						@endif
						<!-- buat percabangan supaya kalo siswa yang login, data table mahasiswa tidak kelihatan -->
						<!-- buat percabanngan -->
						@if(auth()->user()->role == 'admin')
						<li><a href="/siswa" class=""><i class="lnr lnr-user"></i><span>MAHASISWA</span></a></li>
						<li><a href="/posts" class=""><i class="lnr lnr-pencil"></i><span>POSTS</span></a></li>
						<li><a href="/materi" class=""><i class="lnr lnr-pencil"></i><span>MATERI</span></a></li>
						@endif
						
						@if(auth()->user()->role == 'admin')
						<li>
							<a href="#subPages" data-toggle="collapse" class="collapsed"><i class="lnr lnr-file-empty"></i> <span>GRAFIK</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
							<div id="subPages" class="collapse ">
								<ul class="nav">
									<li><a href="/" class="">Grafik Dosen</a></li>
									<li><a href="/" class="">Grafik Siswa</a></li>
									<li><a href="/" class="">Grafik Karyawan</a></li>
								</ul>
							</div>
						</li>
						@endif

						@if(auth()->user()->role == 'admin')
						<li><a href="/dosen" class=""><i class="lnr lnr-dice"></i> <span>DOSEN</span></a></li>
						@endif

			
					</ul>
				</nav>
			</div>
        </div>