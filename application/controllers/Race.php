<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Race extends CI_Controller {
    public function __construct(){
        parent::__construct();
        $this->load->model('event','',FALSE);
    }

	public function getdetails() {
        $data['event_id'] = $this->uri->segment(3);
        
		$this->load->view('race_detail', $data);
	}
}