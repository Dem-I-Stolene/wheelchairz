



	<div class="inner">
		<header>
			<h1>{p_title}<br />
			</h1>
			<p>
				<p>DemIstolene er et makkerpar af to unge, friske fyre med handicap. </p>
				
				<p>Grundet deres dagligdag i manuel- og elektriskkørestol kender de alt til de udfordringer der måtte være når det gælder om tilgængelighed som kørestolsbruger. Derfor har de også de perfekte forudsætninger for at kunne opsnappe de udfordringer der måtte være som kørestolsbruger 
				</p>
				<p>Formålet med sitet, er derfor at skabe overblik for andre kørestolsbrugere der ønsker at rejse rundt i verdenen, uden at opleve de store vanskeligheder. Dette site omhandler Berlin.</p>
			</p>
		</header>
		<section class="tiles">
			{pages}
				<article class="style1" onmouseover="slicer('text{p_id}')">
					<span class="image">
						<img src="<?php echo base_url('assets/images/pic09.jpg'); ?>" alt="" />
					</span>
					<a href="<?php echo base_url('page/{p_id}'); ?>">
						<h2>{p_title}</h2>
						<div class="content">
							<p id="text{p_id}">{p_content_file}</p>
						</div>
					</a>
				</article>
			{/pages}
		
		</section>
	</div>




























