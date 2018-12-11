require_relative 'config/environment'

class App < Sinatra::Base
  get "/reversename/:name" do
    @name = params[:name]
    @name.reverse
  end

  get "/square/:number" do
    @result = params[:number].to_i * params[:number].to_i
    "#{@result}"

  end
  get "/say/:number/:phrase" do
    # binding.pry
    # params[:phrase] * (params[:number].to_i + 1)
    @result = ""
    params[:number].to_i.times do
    @result +=  params[:phrase]
    end
    @result
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
"#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    if params[:operation] == "add"
      answer = (@number1 + @number2).to_s

    elsif params[:operation] == "subtract"
      answer = (@number1 - @number2).to_s

    elsif  params[:operation] == "multiply"
      answer = (@number1 * @number2).to_s
    elsif  params[:operation] == "divide"
      answer = (@number1 / @number2).to_s

    end

    answer
  end
end
