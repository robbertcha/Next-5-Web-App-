<!DOCTYPE html>
<html lang="en" ng-app="testApp" ng-controller="mainController">
<head>
	<?php $this->load->view('/global/header'); ?>
</head>

<body ng-init="initRacingDetails(<?php echo $event_id; ?>);">
    <div class="race_detail_cont">
		<div class="race_detail_header">
			<a href="" class="race_detail_arrow" ng-click="backToHome();"></a>
			<div class="race_detail_left">
				<div class="race_detail_title">
					{{ assets.Meeting }}
				</div>
				<div class="race_detail_desc">
					{{assets.Description}}
				</div>
			</div>

			<div class="race_detail_right">
				<div class="race_countdown_bar">
					<div class="race_detail_clock"></div>
					<div class="race_detail_countdown">
						{{assets.count_down}} To Go
					</div>
				</div>
				<div class="race_details_bar">
					<div class="race_detail_distance">
						Distance: {{assets.Distance}}
					</div>
					<div class="race_detail_time">
						Race Status: <?php echo date("H:i A", time()); ?> 
					</div>
					<div class="race_detail_status">
						Race Status: {{assets.Status}}
					</div>
				</div>
			</div>
		</div>


		<table class="race_detail_table">
			<tr class="table_header">
				<td class="field_pos">Position</td>
				<td class="field_runner">Runner</td>
				<td class="field_jockey">Jockey</td>
				<td class="field_weight">Weight(kgs)</td>
				<td class="field_action">Action</td>
			</tr>


		
			<tr class="table_row" ng-repeat="record in assets.runners">
				<td class="field_pos">{{record.position}}</td>
				<td class="field_runner">{{record.name}}</td>
				<td class="field_jockey">{{record.jockey_name}}</td>
				<td class="field_weight">{{record.weight}}</td>
				<td class="field_action">
					<button ng-click="checkBet(assets.SuspendDateTime);" ng-disabled="checkButton(assets.SuspendDateTime);">
						Bet Now
					</button>
				</td>
			</tr>

		</table>

	</div>
</body>

<?php $this->load->view('/global/footer'); ?>
</html>