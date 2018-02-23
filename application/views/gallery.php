
<div class="container gal-container inner">
	<h1><?php foreach ($gallery as $key => $value) {
		echo $value['g_name'];
	} ?><br />
	<?php 
		foreach ($images as $key => $value) {
	 ?>
    <div class="col-md-6 col-sm-12 co-xs-12 gal-item">
      <div class="box" style="margin: 0 !important;">
        <a href="#" data-toggle="modal" data-target="#<?php echo $value['i_id']; ?>">
          <img src="<?php echo base_url('assets/images/'.$value['i_file']); ?>">
        </a>
        <div class="modal fade" id="<?php echo $value['i_id']; ?>" tabindex="-1" role="dialog">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
              <div class="modal-body">
                <img src="<?php echo base_url('assets/images/'.$value['i_file']); ?>">
              </div>
                <div class="col-md-12 description">
                  <h4><?php echo $value['i_alt']; ?></h4>
                </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <?php } ?>
  </div>
