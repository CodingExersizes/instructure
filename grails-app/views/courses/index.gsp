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

                        <button class="ui teal button" data-ng-click="enroll(course.id)">Enroll</button>
                    </div>

                </div>
            </div>
        </div>
        <div class="ui teal horizontal label">Currently on page:
            <div class="detail" data-ng-bind="currentPage"></div>
        </div>
        <div class="ui divider">
            <button class="ui button" data-ng-click="updateCourseList(links.first.page, links.first.per_page)">First</button>
            <button data-ng-show="links.next" class="ui button" data-ng-click="updateCourseList(links.next.page, links.next.per_page)">Next</button>
            <button data-ng-show="links.prev"class="ui button" data-ng-click="updateCourseList(links.prev.page, links.prev.per_page)">Previous</button>
            <button class="ui button" data-ng-click="updateCourseList(links.last.page, links.last.per_page)">Last</button>
        </div>

    </div>
</div>

</body>
</html>