<?php defined('SYSPATH') OR die('No direct access allowed.');
class Faculty_Setup_Controller extends Template_Controller {

	// Set the name of the template to use
	public $template = 'templates/main';

	public function __construct(){
		parent::__construct();

		$this->session = Session::instance();


		if(! $this->session->get('faculty')) {
			url::redirect('/');
		}
		$this->faculty_docs_model = new Faculty_Docs_Model;

	}
}