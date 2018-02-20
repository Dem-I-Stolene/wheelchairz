<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {

	public function create()
	{
		if ($this->input->post('create')) {
			$this->form_validation->set_rules('title', 'Page Title', 'required');

			if ($this->form_validation->run()) {
				$formdata = array(
								'p_title'				=>		$this->input->post('title'),
								'p_content_file'		=>		$this->input->post('content'),
								'p_slug'				=>		url_title($this->input->post('title'), 'underscore', TRUE)
							);

				if ($this->input->post('issubpage') !== "0") {
					$formdata['p_parent'] = $this->input->post('issubpage');
				}
				
				$this->db->insert('pages', $formdata);

			}

			// echo "<pre>";
			// foreach ($this->input->post() as $row) {
			// 	echo $row;
			// }
			// 	// echo $this->input->post();
			// echo "</pre>";
		}

		$sqlQuery = $this->db->get('pages');
		$data = $sqlQuery->row_array();
		$this->db->where('p_admin', 0);
		$this->db->where('p_parent', null);
		$data['pages'] = $this->db->get('pages')->result_array();

		$this->Page_model->load_page('admin/create', $data);
	}

}