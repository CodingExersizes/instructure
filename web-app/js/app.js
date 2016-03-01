var app = angular.module("instructure", ["ig.linkHeaderParser"]);
app.controller('coursesController', function ($scope, $window, $http, linkHeaderParser) {


    $scope.initialize = function () {
        $http.get("/instructure/token").then(function (data) {
            $scope.token = data;
            $scope.getCourses()
            $scope.currentPage = 1;
        });
    };

    $scope.getCourses = function () {
        $http.get("/instructure/list", {params: {"token": $scope.token}}).then(function (data) {

            $scope.courses = angular.fromJson(data.data.courses)
            $scope.link = data.data.link
            $scope.parseLink($scope.link);

        })
    };

    $scope.updateCourseList = function (page, per_page) {
        $scope.currentPage =page;
        $http.get("/instructure/list", {
            params: {
                "token": $scope.token,
                "page": page,
                "per_page": per_page
            }
        }).then(function (data) {

            $scope.courses = angular.fromJson(data.data.courses)
            $scope.link = data.data.link
            $scope.parseLink($scope.link);

        })

    }

    $scope.parseLink = function (link) {
        $scope.links = linkHeaderParser.parse($scope.link.replace("Link: ", "").trim());
        console.log($scope.links);
    }

    $scope.initialize();

});