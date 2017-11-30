<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {
    public function __construct(){
        parent::__construct();
        $this->load->model('event','',FALSE);
    }

	public function index() {
        // $url = "https://www.ladbrokes.com.au/api/feed/racingList";
        
        // $curl = curl_init();
        // curl_setopt($curl, CURLOPT_URL, $url);
        // curl_setopt($curl, CURLOPT_RETURNTRANSFER, false);
        // curl_setopt($curl, CURLOPT_NOBODY, true);
        // curl_setopt($curl, CURLOPT_HEADER, 1);
        // curl_setopt($curl, CURLOPT_FAILONERROR,true);
        // curl_setopt($curl, CURLOPT_FOLLOWLOCATION, true);
        // curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, false);
        // curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
        // curl_setopt($curl, CURLOPT_VERBOSE ,true);
        // curl_setopt($curl, CURLOPT_CONNECTTIMEOUT, 10);
        // curl_setopt($curl, CURLOPT_USERAGENT, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.13) Gecko/20080311 Firefox/2.0.0.13');
        // $str = curl_exec($curl);
        // $info = curl_getinfo($curl);
        // curl_close($curl);
        
        // print_r($str);
        // print_r($info);
		$this->load->view('home');
	}
}
