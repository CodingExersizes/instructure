package instructure

import grails.converters.JSON

class CoursesController {
    ApiService apiService

    def index() {

        render(view: "index")
    }

    def list() {
        def token = params.token
        def page = params.page
        def per_page = params.per_page
        def courses
        if (page && per_page) {
            def query = [page: page, per_page: per_page]
            courses = apiService.updateCourses(new JSON().parse(token).data, query)
        } else
            courses = apiService.getCourses(new JSON().parse(token).data)

        render(contentType: 'application/json', text: courses as JSON )
    }

    def token() {
        apiService.initialize()
        def token=apiService.token
        render(contentType: 'application/json', text: token)
    }
}