# fizzbuzz_spec.rb
require 'minitest'
require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/reporters'
require_relative '../lib/fizzbuzz'
# name of file not class.

describe 'Testing FizzBuzz' do
  it 'Must Return "Fizz" for multiples of 3 and not multiples of 5' do
    expect(Fizzbuzz::Fizzbuzz.fizzbuzz(3) ).must_equal("Fizz")
    expect(Fizzbuzz::Fizzbuzz.fizzbuzz(6) ).must_equal("Fizz")
    expect(Fizzbuzz::Fizzbuzz.fizzbuzz(36) ).must_equal("Fizz")
  end
  it 'It must raise al ArgumentError if given a non fixnum' do
    expect (proc { Fizzbuzz::Fizzbuzz.fizzbuzz("Something") } ).must_raise ArgumentError
  end
  it 'Must Return "Buzz" for multiples of 5 and not multiples of 3' do
    expect(Fizzbuzz::Fizzbuzz.fizzbuzz(5) ).must_equal("Buzz")
    expect(Fizzbuzz::Fizzbuzz.fizzbuzz(10) ).must_equal("Buzz")
    expect(Fizzbuzz::Fizzbuzz.fizzbuzz(20) ).must_equal("Buzz")
  end

  it 'Must Return "Fizz Buzz" if for multiples of 5 and 3' do
    expect(Fizzbuzz::Fizzbuzz.fizzbuzz(15) ).must_equal("FizzBuzz")
    expect(Fizzbuzz::Fizzbuzz.fizzbuzz(30) ).must_equal("FizzBuzz")
    expect(Fizzbuzz::Fizzbuzz.fizzbuzz(45) ).must_equal("FizzBuzz")
  end

  it 'Must Return the number as a String for numbers not divisible by 3 or 5' do
    expect(Fizzbuzz::Fizzbuzz.fizzbuzz(1) ).must_equal("1")
    expect(Fizzbuzz::Fizzbuzz.fizzbuzz(2) ).must_equal("2")
    expect(Fizzbuzz::Fizzbuzz.fizzbuzz(101) ).must_equal("101")
  end

end
