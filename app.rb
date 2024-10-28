require "sinatra"
require "sinatra/reloader"


get("/random/results") do

  erb(:random_results)

end

get("/random/new") do

  erb(:random)

end

get("/payment/results") do

    # Retrieve values from the query string
    apr = params["apr"].to_f
    years = params["years"].to_i
    principal = params["principal"].to_f
  
    # Calculate the payment using the formula
    payment = (apr / 100 * principal) / (1 - (1 + apr / 100) ** -years)
  
    # Pass the values to the view
    erb :payment_results, locals: { apr: apr, years: years, principal: principal, payment: payment.round(2) }

end

get("/payment/new") do

  erb(:payment)

end

get("/square_root/results") do

  erb(:square_root_results)

end

get("/square_root/new") do

  erb(:square_roots)

end

get("/square/results") do

  erb(:square_results)

end

get("/square/new") do

  erb(:square)

end

get("/") do

  erb(:square)

end
