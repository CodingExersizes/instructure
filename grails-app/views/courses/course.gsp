<%--
  Created by IntelliJ IDEA.
  User: imuchnik
  Date: 3/1/16
  Time: 8:28 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to the Instructure Project</title>

</head>

<body>
<div data-ng-controller="courseController" data-ng-init="initialize(${id})">

    <div class="ui relaxed divided list">
        <div class="content ">
            <div class="ui raised segment">
                <div class="ui raised segment">
                    <a class="ui black ribbon label">Course Description:</a>
                    <span data-ng-bind="course.description"></span>
                </div>
                <button class="ui teal button" data-ng-click="enroll(course.id)">{{enrolled || "Enroll"}}</button>
            </div>
        </div>
    </div>
</div>
</body>
</html>