<!-- Menu -->
	<nav id="menu">
		<h2>Menu</h2>
		<ul>
			<?php
				foreach($nav as $key => $value){
			?>
				<li><a href="<?php echo base_url('page/'.$value['p_id']); ?>"><?php echo $value['p_title']; ?></a></li>
				<?php 
					if(isset($value['subnav'])){
				?>
				<ul>
					<?php
						foreach($value['subnav'] as $subkey => $subvalue){
							if ($subvalue['p_gallery'] > 0) {
					?>
								<li  style="list-style-type: none;">
									<a style=" color: white;" href="<?php echo base_url('page/'.$value['p_id'].'/gallery/'.$subvalue['p_gallery']); ?>">
										
										<?php echo $subvalue['p_title']; ?>
									
									</a>
								</li>
					<?php
							} else {
					?>
								<li  style="list-style-type: none;">
									<a style=" color: white;" href="<?php echo base_url('/subpage/'.$subvalue['p_id']); ?>">
										
										<?php echo $subvalue['p_title']; ?>
									
									</a>
								</li>
					<?php
							}
						}
					?>
				</ul>
			<?php
					}
				}
			?>
		</ul>
	</nav>
<!-- Main -->
<div id="main">