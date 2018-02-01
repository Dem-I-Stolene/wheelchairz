<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Page extends CI_Controller {
	

	public function index($slug = null)
	{
		$data['test'] = '1234';
		$this->Page_model->load_page('view', $data, $slug);
	}
}
