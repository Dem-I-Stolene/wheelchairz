<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Page extends CI_Controller {
	
	public function index($slug = null)
	{
		if ($slug) {
			$this->db->where('p_slug', $slug);
		}
		$sqlQuery = $this->db->get('pages');
		$data = $sqlQuery->row_array();
		$this->db->where('p_admin', 0);
		$this->db->where('p_parent', null);
		$data['pages'] = $this->db->get('pages')->result_array();
		$this->Page_model->load_page('front', $data, $slug);
	}

	public function test()
	{
		$this->Page_model->load_page('welcome_message');
	}

	public function subpage($slug)
	{
		if ($slug) {
			$this->db->where('p_slug', $slug);
		}
		$sqlQuery = $this->db->get('pages');
		$data = $sqlQuery->row_array();
		$this->db->where('p_admin', 0);
		$this->db->where('p_parent', null);
		$data['pages'] = $this->db->get('pages')->result_array();
		$this->Page_model->load_page('subpage');
	}
}
