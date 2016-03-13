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

		$faculty = $this->faculty_model->findOne($facNo);
		$adminData = $this->admin_data_model->findAll();

		$content = new View('evaluator/evaluation_form');
		$content->faculty = $faculty;
		$content->admin_data = $adminData;
		// $content->evaluations = $this->cce_model->getwhere(['FacultyNo' => $facNo, 'CycleNo' =>$adminData->CycleNo, 'SUCNo' => $adminData->SUCNo])->result_array();
		$content->facultyFullname = "{$faculty->LName}, {$faculty->FName} {$faculty->MName}";
		$content->cce_display = $this->cce_display_model->findAll();
		$this->template->content = $content;
	}

	public function save(){
		if(request::is_ajax() AND request::method() === 'post') {
			$this->auto_render = FALSE;
			$post = security::xss_clean($this->input->post('score'));
			
			$this->cce_model->insertOrUpdate($post);
			
		};
	}

	public function logout(){
		$this->session->delete('evaluator');
		url::redirect('evaluator_auth');
	}
}