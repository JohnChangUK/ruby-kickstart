# Write a method, match_maker, which will receive an unknown number of
# elements, and return an array where every two elements are represented by true or false.
#
# The very first parameter will not be part of this set. Instead, it will tell
# you how to determine what their value should be.
# If it is true, then they will be true when they are oppositely truthy.
# If it is false, then they will be true when they are similarly truthy.
#
# Examples:
# match_maker false, true,  true                # => [true]
# match_maker true,  true,  true                # => [false]
# match_maker true,  false, false               # => [false]
# match_maker true,  false, true                # => [true]
# match_maker true,  true,  false               # => [true]
# match_maker true,  true,  true, false, true   # => [false, true]
# match_maker true,  true,  true, false, nil    # => [false, false]
# match_maker true,  true,  true, true, nil     # => [false, true]
# match_maker true,  true,  true, 0, nil        # => [false, true]


    #Creating a method, takes in the argument 'opposite_attract', which will
    #explain how the result will be evalurated and a varying
    #number of elements which can change, hence the asterisk *.
    def match_maker(opposite_attract, *elements)
        
        #Create an empty array to store/append our values into
        array = []
        
        #Regarding elements, slice/take two at once, hence using the slice method.
        #each_slice iteratates the given block for each slice of <n> elements
        #e.g. each_slice 2
        elements.each_slice 2 do |first, second|
            
            #double bang !! converts a value to a boolean
            #!!"abc" => true
            #!!false = false
            #!!nil = false
            #!!true = true
            
            first = !!first
            second = !!second
            
            #Store result and Use the solution 'key' opposite_attract
            result = if opposite_attract
            #For true, it first and second are different, return true. For false, return false
            first != second
    
            #For true, if first and second are the same, return false, for false return true.
            else
            first == second
            end
        
            #Append the result to array
            array << result
            end
            array
        end
            


