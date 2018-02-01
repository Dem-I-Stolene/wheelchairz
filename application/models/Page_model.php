<?php 
defined('BASEPATH') OR exit('No direct script acces allowed');

class Page_model extends CI_Model
{
	public function load_page($page, $recieved_data = null, $slug = null)
	{
		# Get database informartion

		$page_title = 'DemIstolene';

		if ($slug) {
			$this->db->where('p_slug', $slug);
		} else {
			$this->db->where('p_frontpage', 1);
		}

		$sqlQuery = $this->db->get('pages');

		$data = $sqlQuery->row_array();
		$data['page_title'] = $page_title;
		$data['nav'] = $this->db->get('pages')->result_array();

		# Load page

		$this->parser->parse('template/head', $data);
		$this->parser->parse('template/nav', $data);

		if ($recieved_data) {
			$recieved_data['page_title'] = $page_title;
			$this->parser->parse($page, $recieved_data);
			#echo "le"; exit;
		} else {
			$this->load->view($page);
		}

		$this->parser->parse('template/footer', $data);
		$this->parser->parse('template/end', $data);
		
	}
}

































