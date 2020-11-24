require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    reversed_name = @name.reverse 
    "#{reversed_name}"
  end

  get '/square/:number' do 
    @number = params[:number].to_i
    squared_number = @number ** 2 
    "#{squared_number}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    string = []
    @number.times do |n|
      string << "#{@phrase}"
    end
    string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @op = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    if @op == "add"
      answer = @num1 + @num2
      answer.to_s
    elsif @op == "subtract"
      answer = @num1 - @num2
      answer.to_s
    elsif @op == "multiply"
      answer = @num1 * @num2
      answer.to_s
    elsif @op == "divide" 
      answer = @num1 / @num2
      answer.to_s
    end

  end

end