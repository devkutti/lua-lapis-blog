local lapis = require("lapis")

local app = lapis.Application()
app:enable("etlua")
app.layout = require "views.layout"

-- página inicial
app:get("/", function(self)
  return { render = "index"}
end)

-- página com a lista de todos os posts
app:get("/posts", function(self)
  self.page_title = "Posts"
  
  return { render = "posts" }
end)

-- página de um post
app:get("/posts/:id", function(self)
  return {
    render = "post",
    id = self.params.id
  }
end)

return app
