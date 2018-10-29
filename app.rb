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
    string = ""
    @number.times do
      string += "#{@phrase}"
    end 
    string
  end 
  
  get "/say/:word1/:word2/:word3/:word4/:word5"
    
  end 

end