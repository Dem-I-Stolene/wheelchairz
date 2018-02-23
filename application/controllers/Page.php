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
		$this->db->where('p_frontpage', 0);
		$this->db->where('p_parent', null);
		$data['pages'] = $this->db->get('pages')->result_array();
		$this->Page_model->load_page('front', $data, $slug);
	}

	// public function test()
	// {
	// 	$this->Page_model->load_page('welcome_message');
	// }

	public function subpage($id)
	{
		if ($id) {
			$this->db->where('p_id', $id);
		}
		$sqlQuery = $this->db->get('pages');
		$data = $sqlQuery->row_array();
		$this->db->where('p_admin', 0);
		$this->db->where('p_frontpage', 0);
		$this->db->where('p_parent', $id);
		$data['pages'] = $this->db->get('pages')->result_array();
		$this->db->where('p_id', $id);
		$data['name'] = $this->db->get('pages')->result_array();
		$this->Page_model->load_page('subpage', $data, null, $id);
	}

	public function subsubpage($id)
	{
		if ($id) {
			$this->db->where('p_id', $id);
		}
		$this->db->where('p_admin', 0);
		$sqlQuery = $this->db->get('pages');
		$data = $sqlQuery->row_array();
		$this->Page_model->load_page('subsubpage', $data, null, $id);
	}

	public function gallery($page, $id)
	{
		if ($id) {
			$this->db->where('p_gallery', $id);
		}
		$this->db->where('p_admin', 0);
		$sqlQuery = $this->db->get('pages');
		$data = $sqlQuery->row_array();
		$this->db->where('i_g_id', $id);
		$data['images'] = $this->db->get('images')->result_array();
		$this->db->where('g_id', $id);
		$data['gallery'] = $this->db->get('galleries')->result_array();
		$this->Page_model->load_page('gallery', $data, null, $page);
	}
}
