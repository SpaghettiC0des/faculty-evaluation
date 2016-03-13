<?php defined('SYSPATH') OR die('No direct access allowed.');
class Faculty_Controller extends Faculty_Setup_Controller {

	public function __construct(){
		parent::__construct();

		$this->template->sidebarTemplate = new View('templates/faculty/_sidebar');
		$this->facultyLoggedIn = $this->session->get('faculty');
	}

	public function index(){
		$content = new View('faculty/docs_list');
		$content->docs = $this->faculty_docs_model->getwhere(['FacultyNo' => $this->facultyLoggedIn->FacultyNo, 'SUCNo' => $this->facultyLoggedIn->SUCNo]);
		$this->template->content = $content;
	}

	public function upload(){
		$this->template->content = new View('faculty/upload');

		if($_POST) {
			$this->auto_render = FALSE;
			die(122354);
		}
	}

	public function logout(){
		$this->session->destroy('faculty');
		url::redirect('/');
	}
}