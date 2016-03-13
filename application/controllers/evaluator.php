<?php defined('SYSPATH') OR die('No direct access allowed.');
class Evaluator_Controller extends Evaluator_Setup_Controller {

	public function __construct(){
		parent::__construct();

		$this->template->sidebarTemplate = new View('templates/evaluator/sidebar');
	}

	public function index(){

		$content = new View('evaluator/faculty_list');
		$content->faculties = $this->faculty_model->findAll();
		
		$this->template->content = $content;
	}

	public function evaluate($facNo){
		$content = new View('evaluator/evaluation_form');
		$content->faculty = $this->faculty_model->findOne($facNo);
		$content->cce_display = $this->cce_display_model->findAll();
		$this->template->content = $content;
	}
}