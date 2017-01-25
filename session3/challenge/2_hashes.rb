# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}


def staircase(n)
    
    #Creating an empty array
    values_hash = {}
    
    #Iterate from 1 until the number we have been given
    1.upto n do |x|
        
        #Move to the next value if the number is even
        next if x.even?
        
        #Create an array with all the numbers/values in it
        all_values = Array.new(x) {|number| number + 1}
        
        #Select only the even numbers from all values
        even_numbers = all_values.select {|num| num.even?}
        
        #Put the even number array values IN with the hash of the odd numbers
        
        values_hash[x] = even_numbers
        
        end
    
    #Call the hash being iterated over
        values_hash
        end

    
