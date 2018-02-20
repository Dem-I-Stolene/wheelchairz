<!-- Menu -->
	<nav id="menu">
		<h2>Menu</h2>
		<ul>
			<?php
				foreach($nav as $key => $value){
			?>
				<li><a href="<?php echo base_url($value['p_slug']); ?>"><?php echo $value['p_title']; ?></a></li>
				<?php 
					if(isset($value['subnav'])){
				?>
				<ul>
					<?php
						foreach($value['subnav'] as $subkey => $subvalue){
					?>
						<li>
							<a style="color: red;" href="<?php echo base_url($subvalue['p_slug']); ?>">
								
								<?php echo $subvalue['p_title']; ?>
							
							</a>
						</li>
					<?php
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