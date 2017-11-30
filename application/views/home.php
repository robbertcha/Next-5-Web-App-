<!DOCTYPE html>
<html lang="en" ng-app="testApp" ng-controller="mainController">
<head>
	<?php $this->load->view('/global/header'); ?>
</head>

<body ng-init="initRacingList();">
    <div class="app_body">
        <h1 class="app_title">Next 5 Web App</h1>
        <div class="race_timetable">
            <div class="race_header">
                <div class="race_title">
                    Racing - Next To Go
                </div>
                <div class="race_control">
                    <a href="" ng-click="initRacingList();" class="btn btn_a" ng-class="{ type_select: isTypeSelect('a') }"></a>
                    <a href="" ng-click="selectRacingList('g');" class="btn btn_g" ng-class="{ type_select: isTypeSelect('g') }"></a>
                    <a href="" ng-click="selectRacingList('h');" class="btn btn_h" ng-class="{ type_select: isTypeSelect('h') }"></a>
                    <a href="" ng-click="selectRacingList('t');" class="btn btn_t" ng-class="{ type_select: isTypeSelect('t') }"></a>
                </div>
            </div>
            <ul class="race_list">
                <li ng-repeat="record in assets" tooltip-animation="true" tooltip-placement="top" tooltip="{{record.Description}}">
                    <a href="index.php/race/getdetails/{{record.EventID}}">
                        <div class="race_cont">
                            <label class="race_meeting">{{record.Meeting}}</label>
                            <label class="race_number">R{{record.RaceNum}}</label>
                        </div>
                        <div class="race_timer_type">
                            <div class="race_type {{record.RaceType}}"></div>
                            <div class="race_timer">{{record.count_down}}</div>
                        </div>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</body>

<?php $this->load->view('/global/footer'); ?>
</html>