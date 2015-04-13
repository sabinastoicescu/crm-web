
require_relative 'contacts'
require_relative 'rolodex'
require 'sinatra'

$rolodex=Rolodex.new
contact=Contact.new("Johnny", "Bravo", "johnny@bitmakerlabs.com", "Rockstar")
$rolodex.add_contact(contact)

get '/' do
	@crm_app_name= "My CRM"
	erb :index
end

get '/contacts' do
  erb :contacts
end

get '/contacts/new' do
	erb :new_contact
end

post '/contacts' do
	new_contact=Contact.new(params[:first_name], params[:last_name], params[:email], params[:notes])
	$rolodex.add_contact(new_contact)
  redirect to ('/contacts')
end

get "/contacts/:id" do
  @contact=@@rolodex.find(params[:id].to_i)
  if @contact
  erb :show_contact
  else
    raise Sinatra::NotFound
  end
end

get "/contacts/:id/edit" do
  @contact=@@rolodex.find(params[:id].to_i)
  if @contact
  erb :edit_contact
  else
    raise Sinatra::NotFound
  end
end



#  Use square brackets to "dereference" an Array or Hash
#  my_array[4] or my_hash['a key'] or my_hash[:symbol_key]
# Curly brackets are for a literal my_new_hash = {}
# Square brackets are for a literal my_new_array = []

# All of the above, is totally unrelated to string interpolation
# "this is something different #{dynamic_part_of_string}"
