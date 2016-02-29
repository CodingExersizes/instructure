package instructure

import groovyx.net.http.HTTPBuilder

import static groovyx.net.http.ContentType.TEXT
import static groovyx.net.http.Method.GET

class ApiService {
    def token
    def http = new HTTPBuilder('http://canvas-api.herokuapp.com')

    def initialize() {
        http.post(path: "/api/v1/tokens"
        ) { resp, reader ->
            this.token = new groovy.json.JsonSlurper().parseText(new grails.converters.JSON(reader).toString()).token
     }


    }
    def getCourses(def token){
        def courses
        def link
        http.request(GET, TEXT) { req ->
            uri.path = 'api/v1/courses/'
            headers.'Authorization' = "Token $token"
            response.success = { resp, reader ->
                assert resp.status == 200

                courses =    reader.getText() // print response reader
                link=resp.responseBase.headergroup.headers.find{it.name =="Link"}.buffer.toString()
            }
        }
        [courses:courses, link: link]
    }
}
