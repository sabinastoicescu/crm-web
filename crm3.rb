require_relative 'Contacts'
require 'sinatra'


get '/' do
@crm_app_name="My CRM"
erb	:index
end

get '/contacts' do

@contacts = []
  @contacts << Contact.new("Yehuda", "Katz", "yehuda@example.com", "Developer")
  @contacts << Contact.new("Mark", "Zuckerberg", "mark@facebook.com", "CEO")
  @contacts << Contact.new("Sergey", "Brin", "sergey@google.com", "Co-Founder")

erb :contacts3
end

get'/contacts/new' do
	erb :new_contact3
end

