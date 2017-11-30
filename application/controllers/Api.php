<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Api extends CI_Controller {

    function __construct() {
        parent::__construct();
        $this->load->model('event','',FALSE);
    }

    public function getRacingList() {
        $request= json_decode(file_get_contents('php://input'), TRUE);
        $keyword = $this->input->get("keyword");

        $race_type = $this->event->getAllIDsByRacetype($keyword);
        if ($race_type) {
            $output['data'] = $this->event->getRaceDetailsByID($race_type->all_ids);
            $output['success'] = true;
        } else {
            $output['msg'] = 'Error! Database is operated incorrectly.';
            $output['success'] = false;
        }
        $this->output->set_content_type('application/json')->set_output(json_encode($output));
       
    }

    public function getCurrentRacingList() {
        $race_type = $this->event->getCurrentRaceIDs();
        if ($race_type) {
            $output['data'] = $this->event->getRaceDetailsByID($race_type->all_ids);
            $output['success'] = true;
        } else {
            $output['msg'] = 'Error! Database is operated incorrectly.';
            $output['success'] = false;
        }
        $this->output->set_content_type('application/json')->set_output(json_encode($output));
    }

    public function getCurrentRaceDetails() {
        $request= json_decode(file_get_contents('php://input'), TRUE);
        $event_id = $this->input->get("event_id");

        $record = $this->event->getRaceDetailsByID($event_id);
        if (isset($record[0])) {
            $output['data'] = $record[0];
            $output['data']->runners = array();
            $output['data']->runners = $this->event->getRunnersByID($event_id);
            $output['success'] = true;
        }else {
            $output['msg'] = 'Error! Database is operated incorrectly.';
            $output['success'] = false;
        }
        $this->output->set_content_type('application/json')->set_output(json_encode($output));
    }


}
?>