<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to the Instructure Project</title>

</head>

<body>
<div data-ng-app="instructure" data-ng-controller="coursesController">

    <div>

        <div data-ng-repeat="course in courses track by course.id">
            <div>Course Id <span data-ng-bind="course.id"></span></div>
            <div>Course Name <span data-ng-bind="course.name"></span></div>
            <div>Course Description <span data-ng-bind="course.description"></span></div>
            <button>Enroll</button>
        </div>

        <button> Next {{link}}</button>


    </div>
</div>

</body>
</html>