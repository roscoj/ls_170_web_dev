require "sinatra"
require "sinatra/reloader"

not_found do
  erb :not_found
end

get "/" do
  erb :home
end

get "/about" do
  @title = "About"
  erb :about
end

get "/contact" do
  @title = "Contact"
  erb :contact
end
