require 'sinatra'

get '/' do #we set out a route for this particular URL and method this is the response you are going to ge.
	#if you make a get request you get hello world through this method
	#puts "Hello" # this will show up in the terminal (server log)
	#query strings ? bitmaker = true
	#params hash collected this information (not part of the get method and not part of the URL)
	
#	puts params

	erb :index

#	"Hello World!"	#the last line will be returned to the user, the puts statements can't be the last ones, because then nil will be displayed on the web page
end


get '/dan' do
"Sup Dan"
end

get '/mina' do
"Hello Mina"
end

get '/julie' do
	"Hello Julie"
end

get '/jordan' do
	"Hello Jordan"
end

get '/hello/:name' do
	name=params ["name"]
	"Hello #{name.capitalize}"
	end

#rules cascade, the first ones are first

#erb means embedded ruby