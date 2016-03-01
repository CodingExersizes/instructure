class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?" {
            constraints {
                // apply constraints here
            }
        }

        "/" {
            controller = "courses"
            action = "index"
        }

        "/list" {
            controller = "courses"
            action = "list"
        }
        "/token" {
            controller = "courses"
            action = "token"
        }
        "/enroll" {
            controller = "courses"
            action = "enroll"
        }

        "500"(view: '/error')
    }
}
