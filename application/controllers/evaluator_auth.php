<?php defined('SYSPATH') OR die('No direct access allowed.');
class Evaluator_Auth_Controller extends Template_Controller {
	
	public $template = 'templates/_login';

	public function __construct(){
		parent::__construct();

		$this->session = Session::instance();

		$this->evaluator_model = new Evaluator_Model;

	}

	public function index(){
		$this->template->content = new View('evaluator/login');

		if($_POST) {
			$post = security::xss_clean($this->input->post());
			$evaluatorData = $this->evaluator_model->authenticate($post);

			if($evaluatorData) {
				$this->session->set('evaluator', $evaluatorData);

				url::redirect('evaluator/home');
			} else {
				$this->session->set_flash('login_error', 1);
			}
		}
	}
}
