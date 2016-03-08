Instructure Coding Challenge
=======================

This is a grails app. To get started do the following:

1. Clone (or unzip) this repo
2. `cd instructure`
3. `./run.sh ` Note: the site runs on port 8080 by default, so make sure it is available.

#Project layout:

It follows grails conventions with very little deviation.

###grails-app directory contains:

    1. conf - configurations such as UrlMappings.groovy, Config.groovy and BuildConfig.groovy
    2. controllers - MVC Controllers
    3. views- MVC views
    4. services - shared services ( such as api calls)

###web-app:

    1. js- javascript ( in our case angular application)
    2. css-  css assets

# Third party dependencies(included)

 1. AngularJS
 2. SemanticUI
 3. Lodash
 4. [angular-link-header-parser](https://libraries.io/bower/angular-link-header-parser) module


####Instructions:
Feel free to use whatever language you're most comfortable with. If you have any questions or run into problems, feel free to email Zach or myself. 

Course API Consumer 

In canvas, we use an API driven architecture. We've created a very simplified version of our api that just exposes some data about courses here:http://canvas-api.herokuapp.com/ 

We'd like you to build a simple application that consumes this api and displays the data to the user. You are free to use whatever technology stack you'd like but please pick something you know; this isn't a good time to experiment in new technology! :) 

What we hope to see is a web page that displays a list of courses. The api returns 2 courses at a time with pagination links in the response header. We'd like your app to display things the same way. So 2 courses per page with next/prev links to get additional pages of courses. When you click on a course, we'd like to be taken to a page that displays all the details about that course. 

In order to access courses, you'll need to send an authorization token with your requests. The documentation at the above heroku link explains how to obtain a token. 

If you have time, you could also put an "Enroll" button on the individual course page, which could post to the enrollment endpoint. 

We're looking for functionality, but if you have time, style is a nice bonus. 

Looking forward to seeing what you come up with! 
