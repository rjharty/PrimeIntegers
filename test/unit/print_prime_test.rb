require 'test_helper'

class PrintPrimeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
 
    def setup
        printPrime = PrintPrime.new
    end
    
    def teardown
        printPrime = nil
    end
    
    test "should construct an array of [1,2,3,5] when given 5" do
        printPrime = PrintPrime.new
        array = printPrime.constructArray 5
        assert_equal(array.length,4)
        assert_equal(array, [1,2,3,5])
    end

    test "should determine if 5 is prime number" do
        printPrime = PrintPrime.new
        assert printPrime.isPrime 5
    end

    test "should assert 256 is not a prime number" do
        printPrime = PrintPrime.new
        assert !printPrime.isPrime(256)
    end

    test "should determine if 11 is prime number" do
        printPrime = PrintPrime.new
        assert printPrime.isPrime 31
    end

    test "should print prime integers up until prime number" do
        printPrime = PrintPrime.new
        printPrime.printArray 67
    end

    test "should print prime integers up until non prime number" do
        printPrime = PrintPrime.new
        printPrime.printArray 256
    end
end
