<?php defined('SYSPATH') OR die('No direct access allowed.');
class Faculty_Docs_Model extends Model {

	public function __construct(){
		parent::__construct();
	}

	public function findOne($facNo){
		return $this->db->getwhere('facultydocs', ['FacultyNo' => $facNo])->current();
	}

	public function getwhere($condition){
		return $this->db->getwhere('facultydocs', $condition);
	}
}