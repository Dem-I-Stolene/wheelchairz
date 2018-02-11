<?php 
defined('BASEPATH') OR exit('No direct script acces allowed');

class Page_model extends CI_Model
{
	public function load_page($page, $recieved_data = null, $slug = null)
	{
		# Get database informartion

		if ($this->input->post('footer_form_send')) {
			$name = $this->input->post('namr');
			$email = $this->input->post('email');
			$subject = $this->input->post('subject');
			$message = $this->input->post('message');

			$this->Mail_model->form_mail($name, $email, $subject, $message);
		}

		$page_title = 'DemIstolene';

		if ($slug) {
			$this->db->where('p_slug', $slug);
		} else {
			$this->db->where('p_frontpage', 1);
		}

		$sqlQuery = $this->db->get('pages');

		$data = $sqlQuery->row_array();
		$data['page_title'] = $page_title;

		$this->db->where('p_parent', null);
		$this->db->where('p_admin', 0);
		$data['nav'] = $this->db->get('pages')->result_array();

		foreach ($data['nav'] as $key => $value) {
			$this->db->where('p_parent', $value['p_id']);
			$this->db->where('p_admin', 0);
			$sqlQuery = $this->db->get('pages');
			if ($sqlQuery->num_rows() > 0) {
				$data['nav'][$key]['subnav'] = $sqlQuery->result_array();
			}
		}

		foreach ($data['nav'] as $key => $value) {
			$this->db->where('p_admin', 1);
			$sqlQuery = $this->db->get('pages');
			if ($sqlQuery->num_rows() > 0) {
				$data['admin_page'] = $sqlQuery->result_array();
			}
		}

		# Load page

		$_SESSION['username'] = 'test';

		$this->parser->parse('template/head', $data);

		#echo "<pre>"; print_r($data); echo "</pre>"; exit;

		if (isset($_SESSION['username'])) {
			$data['username'] = $_SESSION['username'];
			$this->parser->parse('admin/control_panel', $data);
		}

		$this->parser->parse('template/start', $data);
		$this->parser->parse('template/nav', $data);

		if ($recieved_data) {
			$recieved_data['page_title'] = $page_title;
			$this->parser->parse($page, $recieved_data);
		} else {
			$this->load->view($page);
		}

		$this->parser->parse('template/footer', $data);
		$this->parser->parse('template/end', $data);
		
	}
}

































