<?php
Class Event extends CI_Model{
    function getCurrentRaceIDs() {
        $query = $this->db->query("SELECT SUBSTRING_INDEX(GROUP_CONCAT(`EventID`), ',', 15) as all_ids FROM event e1 where status = 'open' and `SuspendDateTime` > ".time()." ORDER BY `SuspendDateTime`");
        if ($query->num_rows() > 0) {
            return $query->result()[0]; 
        } else {
            return false;
        }
    }

    function getAllIDsByRacetype($keyword) {
        $query = $this->db->query("SELECT SUBSTRING_INDEX(GROUP_CONCAT(`EventID` ORDER BY `SuspendDateTime` separator ', '), ',', 5) AS all_ids 
                                    FROM event e1
                                    where status = 'open'
                                    and e1.SuspendDateTime > ".time()."
                                    and RaceType = '".$keyword."'");
        if ($query->num_rows() > 0) {
            return $query->result()[0]; 
        } else {
           return false;
        }
    }

    function getRaceDetailsByID($IDs) {
        $query = $this->db->query("SELECT * FROM event where EventID in (".$IDs.") order by`SuspendDateTime`");
        if ($query->num_rows() > 0) {
            $results = $query->result();
            $i = 0;
            foreach ($results as $each_result) {
                $duration = $each_result->SuspendDateTime - time();
                $hours = floor($duration / 3600);
                $minutes = floor(($duration / 60) % 60);
                $seconds = $duration % 60;
                $count_down = $hours."h ".$minutes."m ";
                $results[$i]->count_down = $count_down;
                $i++;
            }
            return $results;
        } else {
            return false;
        }
    }

    function getRunnersByID($ID) {
        $query = $this->db->query("SELECT * FROM runner where event_id = ".$ID." and status = 1");
        if ($query->num_rows() > 0) {
            return $query->result();
        } else {
            return false;
        }
    }
     
}
?>