require 'sinatra/base'

class BirthdayGreeter < Sinatra::Base

enable :sessions

get '/' do
  erb :index
end

post '/info' do
  session[:name] = params[:name]
  session[:birth_day] = params[:birth_day]
  session[:birth_month] = params[:birth_month]
  redirect '/greeting'
end

get '/greeting' do
  erb :greeting
end

run! if app_file == $0

end
