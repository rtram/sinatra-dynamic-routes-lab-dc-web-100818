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
  
  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end 
  
  get "/:operation/:number1/:number2" do
    @n1 = params[:number1].to_i
    @n2 = params[:number2].to_i
    if params[:operation] == "add"
      "#{@n1 + @n2}"
    elsif params[:operation] == "subtract"
    
    elsif params[:operation] == "multiply"
    
    elsif params[:operation] == "divide"
  end 
end