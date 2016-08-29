#fizzbuzz.rb

require_relative '../Fizzbuzz'

# module name and the other is Class name
class Fizzbuzz::Fizzbuzz

  def self.fizzbuzz(number)
    if number.class != Fixnum
      raise ArgumentError
    end
    if number % 3 == 0 && number % 5 == 0
      return "FizzBuzz" # yea!
    elsif number % 3 == 0
      return "Fizz"
    elsif number % 5 == 0
      return "Buzz"
    else
      # return "#{number}"
      return number.to_s
    end
  end
end
