<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Page extends CI_Controller {
	

	public function index($slug = null)
	{
		$sqlQuery = $this->db->get('pages');
		$data = $sqlQuery->row_array();
		$data['test'] = $this->db->get('pages')->result_array();
		$this->Page_model->load_page('view', $data);
	}

	public function test()
	{
		$this->Page_model->load_page('welcome_message');
	}
}
