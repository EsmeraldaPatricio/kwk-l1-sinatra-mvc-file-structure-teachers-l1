require './config/environment'
require './app/models/model'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    return erb :index
  end
  
  post '/' do   #we click the button now what?
    @the_fortune=get_fortune  #method get_fortune is connected to the instance variable @the_fortune
    @the_user=params[:user]  #creating a new  instance variable the_user
    #hash that stores user input ex: user => value
    return erb :results
  end 
end
