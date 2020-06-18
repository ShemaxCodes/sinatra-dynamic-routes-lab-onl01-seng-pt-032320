require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  get '/reversename/:name' do 
     @name = params[:name]
    "#{@name.reverse}"
  end 
  
  get '/square/:number' do 
    @new_number = params[:number].to_i * params[:number].to_i
    "#{@new_number}"
  end 
  
  get '/say/:number/:phrase' do 
    @number = params[:number].to_i
    @phrase = params[:phrase]
    params[:phrase] * @number
  end
#FIX - add spaces 
 get '/say/:word1/:word2/:word3/:word4/:word5' do 
   @sentence = params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5]
   "#{@sentence}."
   
 end 
 
 get '/:operation/:number1/:number2' do 
   @operation = params[:operation]
   case @operation 
    when "add"
     @answer = params[:number1] + params[:number2]
    when "subtract"
     @answer = params[:number2] - params[:number1]
   end 
   #"#{@answer}"
 end 
end