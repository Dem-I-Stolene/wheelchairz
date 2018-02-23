<div class="inner">
	<header>
		<h1>{p_title}<br />
		</h1>
		<p>
			<?php foreach ($name as $key => $value) {
				echo $value['p_content_file'];
			} ?>
		</p>
	</header>
	<section class="tiles">
		<?php 
		foreach ($pages as $subkey => $subvalue) { 
			if ($subvalue['p_gallery'] == 1) {
			?>
			<article class="style1" onmouseover="slicer('text<?php echo $subvalue['p_id']; ?>')">
				<span class="image">
					<img src="<?php echo base_url('assets/images/pic01.jpg'); ?>" alt="" />
				</span>
				<a href="<?php echo base_url('page/'.$subvalue['p_id'].'/gallery/'.$subvalue['p_gallery']); ?>">
					<h2><?php echo $subvalue['p_title']; ?></h2>
					<div class="content">
						<p id="text<?php echo $subvalue['p_id']; ?>"></p>
					</div>
				</a>
			</article>
		<?php }
			else {
				?>
			<article class="style1" onmouseover="slicer('text<?php echo $subvalue['p_id']; ?>')">
				<span class="image">
					<img src="<?php echo base_url('assets/images/pic01.jpg'); ?>" alt="" />
				</span>
				<a href="<?php echo base_url('/subpage/'.$subvalue['p_id']); ?>">
					<h2><?php echo $subvalue['p_title']; ?></h2>
					<div class="content">
						<p id="text<?php echo $subvalue['p_id']; ?>"><?php echo $subvalue['p_content_file']; ?></p>
					</div>
				</a>
			</article>
<?php
			}

	} ?>
	
	</section>
	<span class="image main"><img src="<?php
	foreach($name as $ikey => $ivalue) {
		$p_image = $ivalue['p_image'];
	}

	echo base_url('assets/images/'.$p_image); ?>" alt="" /></span>
</div>