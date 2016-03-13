<?php defined('SYSPATH') OR die('No direct access allowed.');

class Evaluator_Setup_Controller extends Template_Controller {

	// Set the name of the template to use
	public $template = 'templates/main';


	public function __construct(){
		parent::__construct();
		

		//models
		$this->evaluator_model = new Evaluator_Model;
		$this->faculty_model = new Faculty_Model;
		$this->cce_display_model = new Cce_Display_Model;
	}
}