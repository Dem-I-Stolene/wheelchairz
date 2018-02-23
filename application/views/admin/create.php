<div class="inner">
	<form method="post" name="admincreate">
		<label>Title</label>
		<input type="text" name="title">
		<br>
		<label>Content</label>
		<textarea name="content"></textarea>
		<br>
		<label>Parent</label>
		<select name="issubpage">
			<option value="0">None</option>
			<?php foreach ($pages as $key => $value) {
			 ?>
				<option value="<?php echo $value['p_id']; ?>"><?php echo $value['p_title']; ?></option>
			<?php } ?>
		</select>
		<br><label>Gallery</label>
		<select name="isgallery">
			<option value="0">None</option>
			<?php foreach ($galleries as $key => $value) {
			 ?>
				<option value="<?php echo $value['g_id']; ?>"><?php echo $value['g_name']; ?></option>
			<?php } ?>
		</select>
		<p>Content will not be shown on a gallery page</p>
		
		<input type="submit" name="create" value="Create">
	</form>
</div>