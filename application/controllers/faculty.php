<?php defined('SYSPATH') OR die('No direct access allowed.');
class Faculty_Controller extends Faculty_Setup_Controller {

	public function index(){
		$this->template->sidebarTemplate = new View('templates/faculty/_sidebar');
		$this->template->content = new View('faculty/home');
	}
}