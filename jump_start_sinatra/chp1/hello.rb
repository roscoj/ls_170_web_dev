require "sinatra"
require "sinatra/reloader"

get "/hello" do
  "Hello Sinatra!"
end

get "/dave" do
  name = "Dave"
  "Hello #{name}"
end

get "/:name" do
  name = params[:name]
  "Hi there #{name}"
end
