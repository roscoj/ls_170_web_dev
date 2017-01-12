require "sinatra"
require "sinatra/reloader" if development?
require "tilt/erubis"
require 'yaml'

before do
  @all_users = YAML.load_file("users.yaml")
end

helpers do
  def count_interests(users)
    total_count = 0
    users.each do |_, info|
      total_count += info[:interests].size
    end
    total_count
  end
end

get "/" do
  redirect "/users"
end

get "/users" do
  @title = "All Users - Users and Interests"
  erb :users
end

get "/users/:name" do
  user_name = params[:name]
  @title = "#{user_name.capitalize} - Users and Interests"
  @header = user_name
  @email = @all_users[user_name.to_sym][:email]
  @interests = @all_users[user_name.to_sym][:interests]
  @other_users = @all_users.keys.select { |name| name.to_s != user_name.to_s }
  erb :person
end
