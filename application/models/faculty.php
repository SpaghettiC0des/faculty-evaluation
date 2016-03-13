<?php defined('SYSPATH') OR die('No direct access allowed.');
class Faculty_Model extends Model {

	public function __construct(){
		parent::__construct();
	}

	public function findAll(){
		return $this->db->get('faculty');
	}

	public function findOne($facNo){
		return $this->db->getwhere('faculty', ['FacultyNo' => $facNo])->current();
	}
}