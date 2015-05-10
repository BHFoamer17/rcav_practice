Rails.application.routes.draw do
get("/", { :controller => "calculations", :action => "instructions" })


get("/square_root/:num",   { :controller => "calculations", :action => "sqrt" })

get("/payment/:annual_percentage_rate/:number_of_years/:principal_value", { :controller => "calculations", :action => "pmt" })


end
