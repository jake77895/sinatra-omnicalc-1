require "sinatra"
require "sinatra/reloader"

get("/square/results") do

  erb(:hello)

end

get("/") do

  erb(:square)

end
