require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    username = params[:name]
      "#{username.reverse!} "
  end

  get "/square/:number" do 
    num = params[:number].to_i
    "#{num ** 2}"
  end

  get "/say/:number/:phrase" do 
    result = ""
      (params[:number].to_i).times do
        result += "#{params[:phrase]}\n"
      end
          result
   end

    get "/say/:word1/:word2/:word3/:word4/:word5" do
      inp1 = params[:word1]
      inp2 = params[:word2]
      inp3 = params[:word3]
      inp4 = params[:word4]
      inp5 = params[:word5]

      "#{inp1} #{inp2} #{inp3} #{inp4} #{inp5}."
    end

    get "/:operation/:number1/:number2" do
      op = params[:operation]
      inp1 = params[:number1].to_i
      inp2 = params[:number2].to_i

      if op == "add" 
        result = inp1 + inp2
      elsif op  == "subtract"
         result = inp1 - inp2
      elsif op  == "multiply"
         result = inp1 * inp2
      elsif op  == "divide"
          result = inp1 / inp2
      else
          result = "cannot perform this operation"
      end
        result.to_s
    end


end