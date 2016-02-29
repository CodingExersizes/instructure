package instructure

import grails.converters.JSON

class CoursesController {
    ApiService apiService

    def index() {

        render(view: "index")
    }

    def list() {
        def token = params.token
        def courses = apiService.getCourses(new JSON().parse(token).data)

        render(contentType: 'application/json', text: courses as JSON )
    }

    def token() {
        apiService.initialize()
        def token=apiService.token
        render(contentType: 'application/json', text: token)

    }
}