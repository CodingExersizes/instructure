<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to the Instructure Project</title>

</head>

<body>
<div data-ng-app="instructure" data-ng-controller="coursesController">

    <div>
        <div class="ui relaxed divided list">
            <div class="item" data-ng-repeat="course in courses track by course.id">
                <div class="content ">
                    <div class="ui raised segment">

                        <div class="ui grey horizontal label">Course Id
                            <div class="detail" data-ng-bind="course.id"></div>
                        </div>

                        <div class="ui grey horizontal label">Course Name
                            <div class="detail" data-ng-bind="course.name"></div>
                        </div>


                        <div class="ui raised segment">
                            <a class="ui black ribbon label">Course Description</a>
                            <span data-ng-bind="course.description"></span>
                        </div>

                        <button class="ui teal button">Enroll</button>
                    </div>

                </div>
            </div>
        </div>

        <div class="ui divider">
            <button id="link" class="ui button">Next</button>
        </div>

    </div>
</div>

</body>
</html>