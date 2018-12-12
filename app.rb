require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  # Write your code here!
get "/reversename/:name" do
reversed_name = params[:name].reverse
end
get "/square/:number" do
  sq_number = params[:number].to_i**2
  "#{sq_number}"
end
get "/say/:number/:phrase" do
  number = params[:number].to_i
  phrase = params[:phrase]
  # number.times  {phrase}
  phrase*number
end
get "/say/:word1/:word2/:word3/:word4/:word5" do
  product = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
end

get "/:operation/:number1/:number2" do
 num1=params[:number1].to_i
 num2=params[:number2].to_i

  case params[:operation]
  when "add"
    "#{num1+num2}"
  when "subtract"
    "#{num1-num2}"
  when "multiply"
    "#{num1*num2}"
  when "divide"
    "#{num1/num2}"
  end

end
end
