<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to the Instructure Project</title>

</head>

<body>
<div data-ng-controller="coursesController">

    <div>
        <div class="ui relaxed divided list">
            <div class="item" data-ng-repeat="course in courses track by course.id">
                <div class="content ">
                    <div class="ui raised segment">

                        <div class="ui grey  label">Course Id:
                            <div class="detail" data-ng-bind="course.id"></div>
                        </div>

                        <div class="ui segment">
                            <a class="ui black ribbon label">Course Name:</a>
                            <span class="ui.label" data-ng-bind="course.name"></span>
                        </div>

                        <div>

                            <button class="ui right tiny teal labeled icon button" data-ng-click="viewCourseDetail(course.id)">
                                <i class="right arrow icon"></i>Learn More..</button>
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <div class="ui teal horizontal label">Currently on page:
            <div class="detail" data-ng-bind="currentPage"></div>
        </div>

        <div class="ui divider">
            <button class="ui button"
                    data-ng-click="updateCourseList(links.first.page, links.first.per_page)">First</button>
            <button data-ng-show="links.next" class="ui button"
                    data-ng-click="updateCourseList(links.next.page, links.next.per_page)">Next</button>
            <button data-ng-show="links.prev" class="ui button"
                    data-ng-click="updateCourseList(links.prev.page, links.prev.per_page)">Previous</button>
            <button class="ui button"
                    data-ng-click="updateCourseList(links.last.page, links.last.per_page)">Last</button>
        </div>

    </div>
</div>

</body>
</html>