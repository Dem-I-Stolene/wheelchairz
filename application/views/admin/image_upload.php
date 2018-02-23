<div class="inner">
	<form method="post" enctype="multipart/form-data">
		
		<label>File</label>
		<input name="formfile" type="file">
		<br>
		<label>Description</label>
		<textarea name="alt"></textarea>
		<br>
		<label>Gallery</label>
		<select name="gallery">
			<option value="0">None</option>
			<?php 
				foreach ($galleries as $key => $value) {
			?>
					<option value="<?php echo $value['g_id']; ?>"><?php echo $value['g_name']; ?></option>
			<?php
				}
			 ?>
		</select>
		<br>
		<input name="upload" type="submit" value="Upload">
		
	</form>
</div>