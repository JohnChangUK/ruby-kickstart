# Define a class called Fraction
# This class is used to represent a ratio of two integers
# Include setter methods called numerator and denominator that allow the user to change these values
# Also include a method called to_f that returns the ratio as a float (a number with a decimal point, such as 10.3)
# Also include a method called lowest, which returns a new Fraction, where the numerator and denominator
# are reduced to lowest terms (ie 20/60 becomes 1/3)
# This will require finding the greatest common divisor for the numerator and denominator
# then dividing both by that number.
# I have included a greatest common divisor method for you
# You should also define a method, to_s, that will represent the Fraction as a String
#
# EXAMPLE:
# f = Fraction.new 20, 60
# f.numerator          # => 20
# f.denominator        # => 60
# f.to_s               # => "20/60"
# f.lowest.to_s        # => "1/3"
# f.numerator = 50
# f.denominator = 100
# f.to_s               # => "50/100"
# f.to_f               # => 0.5

class Fraction
    attr_accessor :numerator, :denominator
    
    def initialize(numerator, denominator)
        @numerator = numerator
        @denominator = denominator
        end
    
    def to_f
        numerator/denominator.to_f
        end
    
    def to_s
        "#{numerator}/#{denominator}"
        end
    
    #gcd takes two arguments (a, b)
    #gcd(b, a % b) 'b' is the denominator, 'a' os the numerator
    #'a' modulo 'b' aka '20' % '50'
    def gcd(a,b)
        return a if b == 0
        gcd(b, a%b)
    end
  
  #New instance of the Fraction class
  #Divisor takes in the numerator and denominator
  #numerator = 20, divisor = 20 % 50 which equals 10. 20 divided by 10 is 2
  #denominator = 50, divisor = 50 % 10 which equals 5
  #Final result = 2/5 as it's lowest form
    def lowest
      divisor = gcd(numerator, denominator)
      Fraction.new(numerator/divisor, denominator/divisor)
      end
    end
  

