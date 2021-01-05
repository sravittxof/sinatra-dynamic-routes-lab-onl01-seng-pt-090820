require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    @square = @number ** 2
    "#{@square.to_s}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @string = ""
    
    @number.times do
      @string << @phrase
    end

    @string
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

    @operation = params[:operation].to_s.downcase
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    def math(operation, number1, number2)
      if operation == "add"
        @string = (number1 + number2).to_s
      elsif operation == "subtract"
        @string = (number1 - number2).to_s
      elsif operation == "multiply"
        @string = (number1 * number2).to_s
      elsif operation == "divide"
        @string = (number1/number2).to_s
      else
        @string = "Sorry, I don't recognize that operation."
      end

      @string

    end

    math(@operation, @number1, @number2)

  end

end