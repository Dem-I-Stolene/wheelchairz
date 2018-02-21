<div class="inner">
	<header>
		<h1>{p_title}<br />
		</h1>
		<p>
			Etiam quis viverra lorem, in semper lorem. Sed nisl arcu euismod sit amet nisi euismod sed cursus arcu elementum ipsum arcu vivamus quis venenatis orci lorem ipsum et magna feugiat veroeros aliquam. Lorem ipsum dolor sit amet nullam dolore.
		</p>
	</header>
	<section class="tiles">
		{pages}
			<article class="style1">
				<span class="image">
					<img src="<?php echo base_url('assets/images/pic01.jpg'); ?>" alt="" />
				</span>
				<a href="<?php echo base_url('{p_slug}'); ?>">
					<h2>{p_title}</h2>
					<div class="content">
						<p>{p_content_file}</p>
					</div>
				</a>
			</article>
		{/pages}
	
	</section>
</div>