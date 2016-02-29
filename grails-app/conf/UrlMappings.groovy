class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"/"{
			controller = "courses"
			action = "index"
		}

		"/list"{
			controller = "courses"
			action = "list"
		}
		"/token"{
			controller = "courses"
			action = "token"
		}

		"500"(view:'/error')
	}
}
