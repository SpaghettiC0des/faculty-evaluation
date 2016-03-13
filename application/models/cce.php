<?php defined('SYSPATH') OR die('No direct access allowed.');

class Cce_Model extends Model {
	public function __construct(){
		parent::__construct();
	}

	public function insert($data){
		return $this->db->insert('cce', $data);
	}

	public function getwhere($condition){
		return $this->db->getwhere('cce', $condition);
	}
	public function insertOrUpdate($data){

		foreach ($data as $key => $value) {
			if(count($this->getwhere([
					'FacultyNo'=> $value['FacultyNo'], 
					'CycleNo' => $value['CycleNo'],
					'CCECode' => $value['CCECode'],
					'SUCNo'   => $value['SUCNo'],
				]))) {

				$this->db
				->where([
					'FacultyNo'=> $value['FacultyNo'], 
					'CycleNo' => $value['CycleNo'],
					'CCECode' => $value['CCECode'],
					'SUCNo'   => $value['SUCNo']
				])->update('cce', $value);
			} else {
				$this->db->insert('cce', $value);
			}
			
		} 
			
	}
}