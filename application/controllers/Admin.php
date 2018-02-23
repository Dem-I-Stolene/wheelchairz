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
								'p_content_file'		=>		str_replace("\n", "<br><br>", $this->input->post('content')),
								'p_slug'				=>		url_title($this->input->post('title'), 'underscore', TRUE)
							);

				if ($this->input->post('issubpage') !== "0") {
					$formdata['p_parent'] = $this->input->post('issubpage');
				}

				if ($this->input->post('isgallery') !== "0") {
					$formdata['p_gallery'] = $this->input->post('isgallery');
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

		$data['galleries'] = $this->db->get('galleries')->result_array();

		$this->Page_model->load_page('admin/create', $data);
	}

	public function gcreate()
	{
		if ($this->input->post('create')) {
			$this->form_validation->set_rules('title', 'Page Title', 'required');

			if ($this->form_validation->run()) {
				$formdata = array(
								'g_name'				=>		$this->input->post('title')
							);
				
				$this->db->insert('galleries', $formdata);

			}

			// echo "<pre>";
			// foreach ($this->input->post() as $row) {
			// 	echo $row;
			// }
			// 	// echo $this->input->post();
			// echo "</pre>";
		}

		

		$this->Page_model->load_page('admin/gallery');
	}

	public function upload()
	{
		if ($this->input->post('upload')) {
			$config['upload_path']			= FCPATH.'assets/images/';
			$config['allowed_types']		= 'gif|jpg|png';
			$config['max_size']				= 4096;
			$config['encrypt-name']			= true;
			$config['file_ext_tolower']		= true;

			$this->load->library('upload', $config);

			if ($this->upload->do_upload('formfile')) {
				$formdata = array(
								'i_file'		=>		$this->upload->data('file_name'),
								'i_alt'			=>		$this->input->post('alt')
							);

				if ($this->input->post('gallery')) {
					if ($this->input->post('gallery') !== "0") {
						$formdata['i_g_id'] = $this->input->post('gallery');
					}
				}
				
				$this->db->insert('images', $formdata);
			}
		}
		$sqlQuery = $this->db->get('galleries');
		$data['galleries'] = $sqlQuery->result_array();
		$this->Page_model->load_page('admin/image_upload', $data);
	}

}