require_relative 'config/environment'
require "pry"

class App < Sinatra::Base
  
  get "/reversename/:name" do 
    @name = params[:name]
    "#{@name.reverse}"
  end 
  
  get "/square/:number" do
    @number = params[:number].to_i
    "#{@number*@number}"
  end 
  
  get "/say/:number/:phrase" do 
    @number = params[:number].to_i
    @phrase = params[:phrase]
    i = 0
    while i < @number
      i += 1
      "#{@phrase}"
    end 
  end 

end