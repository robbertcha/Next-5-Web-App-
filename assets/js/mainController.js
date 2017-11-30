//CONTROLLERS
testApp.controller('mainController', function($scope, $http, site_url,$window) {
    $scope.selecttype = "a";
    $scope.assets = "";

    $scope.backToHome = function ( ) {
        $window.location.href = site_url;
    };

    $scope.isTypeSelect = function(key){
        return $scope.selecttype === key;
    };

    $scope.selectRacingList=function(type) {
        $http({
            method: 'Get', 
            url: site_url+'index.php/api/getRacingList/',
            dataType : 'json',
            headers: {'Content-Type': 'application/json'},
            params: {'keyword' : type},
            cache: false
        }).then(
          function success(res) {
            console.log(res.data);
            $scope.assets = res.data.data;
            $scope.selecttype = type;
          },
          function error(res) {
            console.log("Error");
            console.log(res.data);
          }
        ); 
    }

    $scope.initRacingList=function() {
        $http({
            url: site_url+'index.php/api/getCurrentRacingList/', 
            method: "GET", 
            data: [],
            dataType: 'json',
        }).then(
            function success(res) {
                console.log(res.data);
                if (res.data.success == true) {
                    $scope.assets = res.data.data;
                    $scope.selecttype = "a";
                }
            },
            function error(res) {
                console.log("Error");
                console.log(res.data);
            }
        );
    }

    $scope.initRacingDetails=function(event_id) {
        $http({
            method: 'Get', 
            url: site_url+'index.php/api/getCurrentRaceDetails/',
            dataType : 'json',
            headers: {'Content-Type': 'application/json'},
            params: {'event_id' : event_id},
            cache: false
        }).then(
          function success(res) {
            $scope.assets = res.data.data;
            console.log($scope.assets);
          },
          function error(res) {
            console.log("Error");
            console.log(res.data);
          }
        ); 
    }

    $scope.checkBet=function(SuspendDateTime) {
        var current_timeStamp = Math.round(+new Date()/1000);
        console.log(SuspendDateTime, current_timeStamp);
        if (current_timeStamp > SuspendDateTime) {
            alert("Sorry, the event is over.");
        } else {
            alert("You can bet now.");            
        }
    }

    $scope.checkButton=function(SuspendDateTime) {
        var current_timeStamp = Math.round(+new Date()/1000);
        if (current_timeStamp > SuspendDateTime) {
            return true;
        } else {
            return false;
        }
    }
});