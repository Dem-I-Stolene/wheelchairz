<form method="post" name="admincreate">
	<input type="text" name="title" placeholder="Title">
	<textarea name="content">Content</textarea>
	<select name="issubpage">
		<option value="0">None</option>
		<?php foreach ($pages as $key => $value) {
		 ?>
			<option value="<?php echo $value['p_id']; ?>"><?php echo $value['p_title']; ?></option>
		<?php } ?>
	</select>
	<input type="submit" name="create" value="Create">
</form>