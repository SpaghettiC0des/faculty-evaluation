<?php defined('SYSPATH') OR die('No direct access allowed.');
class Index_Controller extends Template_Controller {

	// Set the name of the template to use
	public $template = 'templates/main';

	public $evaluatorViews = 'evaluator/';

	public function index(){
		$this->template->content = new View($this->evaluatorViews.'index');
		$this->template->sidebarTemplate = new View('templates/faculty/sidebar');
	}
}