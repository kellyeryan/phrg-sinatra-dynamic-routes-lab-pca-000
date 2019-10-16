require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @num = params[:number]
    "#{@num.to_i * @num.to_i}"
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase]
    @num = params[:number]
    answer = ''
    @num.to_i.times do
      answer += @phrase
    end
    answer
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    string_of_words = ""
    string_of_words += "#{params[:word1]}" + " #{params[:word2]}" + " #{params[:word3]}" + " #{params[:word4]}" + " #{params[:word5]}" + "."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1]
    @num2 = params[:number2]
    if @operation == "add"
      "#{@num1.to_i + @num2.to_i}"
    elsif @operation == "subtract"
      "#{@num1.to_i - @num2.to_i}"
    elsif @operation == "multiply"
      "#{@num1.to_i * @num2.to_i}"
    else @operation == "divide"
      "#{@num1.to_i / @num2.to_i}"
    end
  end
end
