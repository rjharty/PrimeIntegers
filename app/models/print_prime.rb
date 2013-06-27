class PrintPrime < ActiveRecord::Base
  # attr_accessible :title, :body
    
    def initialize
        @arrayOfPrimeIntegers = [1]
    end
    
    def constructArray integer
    i=2
        while i<=integer.to_i do
            if isPrime i
            @arrayOfPrimeIntegers << i
            end
            i+=1
        end
        @arrayOfPrimeIntegers
    end
    
    def printArray integer
        primeArray = Array.new
        primeArray = constructArray integer
        primeArray.each {|a| print "#{a}, "}
    end
        
    def isPrime integer
    i=2
        while i<integer.to_i do
            if integer%i==0
                return false
            else
                i+=1
            end
        end
        true
    end
    
end
