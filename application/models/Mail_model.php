<?php 
defined('BASEPATH') OR exit('No direct script acces allowed');

class Mail_model extends CI_Model
{
	public function form_mail($userName, $userEmail, $userSubject, $userMessage)
	{
		$mailTo = "your@email.com";

		$this->load->library('email');

		$this->email->from($userEmail, $userName);
		$this->email->to($mailTo);

		$this->email->subject($userSubject);
		$this->email->message($userMessage);

		$this->email->send();
	}
}