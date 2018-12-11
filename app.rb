require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
  	@reversed = params[:name].reverse
  	"#{@reversed}"
  end

  get '/square/:num' do
  	@squared = params[:num].to_i ** 2
  	"#{@squared}"
  end

  get '/say/:number/:phrase' do
  	@result = params[:phrase] * params[:number].to_i
  	"#{@result}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
  	"#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
  	@n1 = params[:number1].to_i
  	@n2 = params[:number2].to_i
  	case params[:operation]
	  	when "subtract"
	  		@r = @n1 - @n2
	  	when "add"
	  		@r = @n1 + @n2
	  	when "multiply"
	  		@r = @n1 * @n2
	  	when "divide"
	  		@r = @n1 / @n2
  	end
  	"#{@r}"
  end
end