<?php defined('SYSPATH') OR die('No direct access allowed.');
class Faculty_Auth_Controller extends Template_Controller {
	
	public $template = 'templates/_login';


	public function __construct(){
		parent::__construct();

		$this->session = Session::instance();

		$this->faculty_model = new Faculty_Model;
	}

	public function index(){
		$this->template->content = new View('faculty/login');
		
		if($_POST) {
			$post = security::xss_clean($this->input->post());
			$facultyData = $this->faculty_model->authenticate($post);

			if($facultyData) {
				$this->session->set('faculty', $facultyData);

				url::redirect('home');
			} else {
				$this->session->set_flash('login_error', 1);
			}
		}
	}
}