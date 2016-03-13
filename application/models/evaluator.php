<?php defined('SYSPATH') OR die('No direct access allowed.');

class Evaluator_Model extends Model {
	public function __construct(){
		parent::__construct();
	}

	public function authenticate($credentials){
		return $this->db->getwhere('evaluator', $credentials)->current();
	}
}