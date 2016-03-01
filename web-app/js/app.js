var app = angular.module("instructure", ["ig.linkHeaderParser"]);
app.controller('coursesController', function ($scope, $window, $http, linkHeaderParser) {
    $scope.baseRoute = "/instructure"

    $scope.initialize = function () {
        $http.get($scope.baseRoute + "/token").then(function (data) {
            $scope.token = data.data;
            $scope.getCourses()
            $scope.currentPage = 1;
        });
    };

    $scope.getCourses = function () {
        $http.get($scope.baseRoute + "/list", {params: {"token": $scope.token}}).then(processResponse);
    };

    $scope.updateCourseList = function (page, per_page) {
        $scope.currentPage = page;
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

    $scope.enroll = function (id) {
        $http.post($scope.baseRoute + "/enroll", {
            "token": $scope.token,
            "id": id,
            "payload": '{"type": "student", "user": {"name": "Test User"}}'

        }).then(console.log("enrolled"));
    }

    $scope.parseLink = function (link) {
        $scope.links = linkHeaderParser.parse($scope.link.replace("Link: ", "").trim());
        console.log($scope.links);
    }

    function processResponse(data) {
        $scope.courses = angular.fromJson(data.data.courses)
        $scope.link = data.data.link
        $scope.parseLink($scope.link);

    }

    $scope.initialize();

});