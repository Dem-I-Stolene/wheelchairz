<?php 
defined('BASEPATH') OR exit('No direct script acces allowed');

class Mail_model extends CI_Model
{
	public function form_mail($userName, $userEmail, $userSubject, $userMessage)
	{
		// Your info

		$yourMail = "your@email.com";
		$yourName = "Your name";

		$autoResponseSubject = "Your mail was recieved";
		$autoResponseMessage = "
									This is an automatic email, please do not respond to it.
									\n \n
									Hello {$userName}, we have recieved your message
									\n
									Your subject: {$userSubject}
									\n
									Your message: {$userMessage}
								"

		// To your email

		$this->email->from($userEmail, $userName);
		$this->email->to($yourMail);

		$this->email->subject($userSubject);
		$this->email->message($userMessage);

		$this->email->send();

		// To the users email

		$this->email->from($yourMail, $yourName);
		$this->email->to($userEmail);

		$this->email->subject($autoResponseSubject);
		$this->email->message($autoResponseMessage);

		$this->email->send();
	}
}