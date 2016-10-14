require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @user_name = params[:name]
    @reverse_name = @user_name.reverse!
    "#{@reverse_name}"
  end

  get '/square/:number' do
    @user_num = params[:number].to_i
    @square = @user_num * @user_num
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @user_num = params[:number].to_i
    @user_phrase = params[:phrase]
    @reply = "#{@user_phrase}\n" * @user_num
    "#{@reply}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
  @word1 = params[:word1]
  @word2 = params[:word2]
  @word3 = params[:word3]
  @word4 = params[:word4]
  @word5 = params[:word5]
  @sentence = "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  "#{@sentence}"
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @oper = params[:operation]

    if @oper == "add"
      @num = @num1 + @num2
      "#{@num}"
    elsif @oper == "subtract"
      @num = @num1 - @num2
      "#{@num}"
    elsif @oper == "multiply"
      @num = @num1 * @num2
      "#{@num}"
    elsif @oper == "divide"
      @num = @num1 / @num2
      "#{@num}"
    else
      "Plese enter valid operation"
    end
  end

end
