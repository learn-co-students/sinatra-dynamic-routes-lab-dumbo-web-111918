require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    n = "#{params[:name]}"
    n.reverse
  end
  get '/square/:number' do
    "#{params[:number].to_i* params[:number].to_i}"
  end
  get '/say/:number/:phrase' do
    params[:phrase] * params[:number].to_i
  end
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end
  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    if params[:operation]== "add"
      answer = num1+num2
      # binding.pry
    elsif params[:operation] == "divide"
      answer = num1/num2
    elsif params[:operation] == "multiply"
      answer = num1 * num2
    elsif params[:operation] == "subtract"
      answer = num1-num2
    else
      "oops"
    end
answer.to_s
  end
end
