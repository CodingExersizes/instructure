package instructure
import grails.test.mixin.Mock
import grails.test.mixin.TestFor
import org.json.simple.JSONObject
import org.junit.Test
import org.springframework.http.HttpStatus

@TestFor(CoursesController)
@Mock([ApiService])
class CoursesControllerTests {


    @Test
    void shouldLoadDefaultTemplate() {
        controller.index()
        assertEquals(response.status,HttpStatus.OK.value())
    }

    @Test
    void shouldReturnToken(){

        def strictControl = mockFor(ApiService,true)
        strictControl.demand.initialize(1) {->}
        strictControl.demand.getToken(1) {->"12345"}
        controller.apiService=strictControl.createMock()

        controller.token()
        assertEquals(response.text, "12345")

    }

    @Test
    void shouldGetCourses(){

        def strictControl = mockFor(ApiService)
        strictControl.demand.getCourses(1) {String token-> new JSONObject( "courses":"foo")}
        controller.apiService=strictControl.createMock()
        params.token="12345"
        controller.list()

        assert response.text=='{"courses":"foo"}'



    }
}
