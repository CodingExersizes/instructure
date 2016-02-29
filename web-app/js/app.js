var app = angular.module("instructure", []);
app.controller('coursesController', function ($scope, $window, $http) {

    $scope.initialize = function () {

        $http.get("/instructure/token").then(function (data) {
            $scope.token= data;
            $scope.getCourses()
        });
    };

    $scope.getCourses = function () {
        $http.get("/instructure/list", {params:{"token": $scope.token}}).then(function (data) {

            $scope.courses = angular.fromJson(data.data.courses)
            $scope.link = data.data.link
        })
    };

    $scope.initialize();

});