package instructure
import grails.converters.JSON

class CoursesController {
    ApiService apiService

    def index() {

        render(view: "index")
    }

    def view(String id){

      render(view: "course", model:[id:id])

    }

    def courseDetail(String id){
        def token = params.token
        def course = apiService.getCourse(id, token)
        render(contentType: 'application/json', text: course as JSON)
    }

    def list() {
        def token = params.token
        def page = params.page
        def per_page = params.per_page
        def courses
        if (page && per_page) {
            def query = [page: page, per_page: per_page]
            courses = apiService.updateCourses(token, query)
        } else
            courses = apiService.getCourses(token)

        render(contentType: 'application/json', text: courses as JSON)
    }

    def token() {
        apiService.initialize()
        def token = apiService.token
        render(contentType: 'application/json', text: token)
    }

    def enroll() {
        def id = request.JSON.id
        def token = request.JSON.token
        def payload =request.JSON.payload
        def status= apiService.enroll(id, token, payload)

        render(status: status)
    }
}