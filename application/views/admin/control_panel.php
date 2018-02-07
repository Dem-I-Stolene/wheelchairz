<div>
	<p>Hej {username}!</p>
	<ul>
		{admin_page}

			<li>
				<a href="<?php echo base_url('admin/{p_slug}'); ?>">{p_title}</a>
			</li>

		{/admin_page}
	</ul>
</div>