<?php defined('SYSPATH') OR die('No direct access allowed.');

class Admin_Data_Model extends Model {
	public function __construct(){
		parent::__construct();
	}

	public function findAll(){
		return $this->db->get('admin_data')->current();
	}
}