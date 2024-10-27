require "sinatra"
require "sinatra/reloader"

get("/square/results") do

  erb(:square_results)

end

get("/square/new") do

  erb(:square)

end

get("/") do

  erb(:square)

end
