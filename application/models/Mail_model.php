<?php 
defined('BASEPATH') OR exit('No direct script acces allowed');

class Mail_model extends CI_Model
{
	public function form_mail($userName, $userEmail, $userSubject, $userMessage)
	{
		// Config
		
		$config['mailtype'] = 'html';

		$this->email->initialize($config);

		// Your info

		$yourMail = "demistolene@gmail.com";
		$yourName = "DemIstolene";

		$autoResponseSubject = "Your mail was recieved";
		$autoResponseMessage = "
									<h2>Hello {$userName}, we have recieved your message</h2>
									
									<p style='font-weight: 900;'>Your subject: </p>
									<p style='padding-bottom: 5px;'>{$userSubject}</p>

									<p style='font-weight: 900;'>Your message: </p>
									<p>{$userMessage}</p>

									<p style='color: grey; background-color: lightgrey; padding: 20px; text-align: center;'>This is an automatic email, please do not respond to it.</p>
								";

		$userName = "Question from: {$userName}";

		// To your email

		$this->email->from($userEmail, $userName);
		$this->email->to($yourMail);

		$this->email->subject("Form: ".$userSubject);
		$this->email->message($userMessage);

		$this->email->send();

		// To the users email

		$this->email->from($yourMail, $yourName." auto response to: ".$userSubject);
		$this->email->to($userEmail);

		$this->email->subject($yourName." ".$autoResponseSubject);
		$this->email->message($autoResponseMessage);

		$this->email->send();
	}
}






































