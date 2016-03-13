<?php defined('SYSPATH') OR die('No direct access allowed.');
class Faculty_Auth_Controller extends Template_Controller {
	
	public $template = 'templates/faculty/_login';


	public function __construct(){
		parent::__construct();
	}

	public function index(){
		$this->template->content = new View('faculty/login');
	}
}