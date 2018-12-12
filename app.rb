require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{(@number * @number).to_s}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase * @number}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params.values.join(" ")}."
  end

  get '/:operation/:number1/:number2' do

    @one = params[:number1].to_i
    @two = params[:number2].to_i
    if params[:operation] == "add"
      "#{@one + @two}"
    elsif params[:operation] == "subtract"
      "#{@one - @two}"
    elsif params[:operation] == "multiply"
      "#{@one * @two}"
    elsif params[:operation] == "divide"
      "#{@one / @two}"
    end
  end


end
