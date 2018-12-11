require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
  name = params[:name]
  name.reverse
  end

  get '/square/:number' do
     number = params[:number].to_i
     (number * number).to_s
  end

  get '/say/:number/:phrase' do
    phrase = params[:phrase]
    number = params[:number].to_i
    sentence = ""
    number.times do
      sentence += "#{phrase}\n"
    end
    sentence
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
  word1 = params[:word1]
  word2 = params[:word2]
  word3 = params[:word3]
  word4 = params[:word4]
  word5 = params[:word5]
  "#{word1} #{word2} #{word3} #{word4} #{word5}."
  end


  get '/:operation/:number1/:number2' do
    ops = params[:operation]
  	num1 = params[:number1].to_i
  	num2 = params[:number2].to_i
  	if ops == "add"
      total = (num1 + num2)
    elsif ops == "subtract"
      total = (num1 - num2)
    elsif ops == "multiply"
      total = (num1 * num2)
    elsif ops == "divide"
      total = (num1 / num2)
    else
      total = "Unable to perform this operation"
    end
      total.to_s
  end

end


