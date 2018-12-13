require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number * @number}"
  end

  get '/say/:number/:phrase' do
    number = params[:number].to_i
    string = params[:phrase] * number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    string = ""
    params.each do |param|
      string += (param[1] + " ")
    end
    string[-1] = ""
    string += "."
    string
  end

  get '/:operation/:number1/:number2' do
    case params[:operation]
    when "add"
      "#{(params[:number1].to_i) + (params[:number2].to_i)}"
    when "subtract"
      "#{(params[:number1].to_i) - (params[:number2].to_i)}"
    when "multiply"
      "#{(params[:number1].to_i) * (params[:number2].to_i)}"
    when "divide"
      "#{(params[:number1].to_f) / (params[:number2].to_f)}"
    end
  end

end