<div>
	<p>Hej {username}!</p>
	<ul>
		<?php
			foreach($admin_page as $adminkey => $adminvalue){
		?>
				<li>
					<a href="<?php echo base_url('admin/'.$adminvalue['p_slug']); ?>"><?php echo $adminvalue['p_title']; ?></a>
				</li>
		<?php
			}
		?>
	</ul>
</div>