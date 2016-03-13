<?php defined('SYSPATH') OR die('No direct access allowed.');

class Cce_Display_Model extends Model {
	public function __construct(){
		parent::__construct();
	}

	public function findAll(){
		return $this->db->get('vw_ccedisplay');
	}
}