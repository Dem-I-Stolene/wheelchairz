<header id="header">
					<h1 id="logo"><a href="index.html">Landed</a></h1>
					<nav id="nav">
						<ul>
							<li><a href="index.html">Home</a></li>
							<?php
								foreach($nav as $key => $value){
							?>
							<li>
								<a href="<?php echo base_url($value['p_slug']); ?>"><?php echo $value['p_title']; ?></a>
								<?php 
								if(isset($value['subnav'])){
								?>
								<ul>
									<?php
										foreach($value['subnav'] as $subkey => $subvalue){
									?>
									<li><a class="nav-link" href="#"></a></li>
									<li><a href="right-sidebar.html"><?php echo $subvalue['p_title']; ?></a></li>
									<?php
										}
									?>
								</ul>
								<?php
								}
								}
								?>
							</li>
								
						

							<li><a href="#" class="button special">Sign Up</a></li>
						</ul>
					</nav>
				</header>