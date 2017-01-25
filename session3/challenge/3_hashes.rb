# Write a method that takes a string and returns an array
# whose keys are all the downcased words in the string,
# and values are the number of times these words were seen.
#
# No punctuation will appear in the strings.
#
# Example:
# word_count "The dog and the cat" # => {"the" => 2, "dog" => 1, "and" => 1, "cat" => 1}


    #Create a function/method with takes 'str' as argument
    def word_count(str)
        
        #Create an array which downcases all characters and returns a new array
        #The split(" ") method splits words with a space inbetween, and then puts all the words into a new array.
        arr = str.downcase.split(" ")
        
        #Iterate over the array to find duplicates.
        #Then assign the values to the hash
            #each_with_object(memo)
            #each_with_object iterates over a collection, passing the current element and argument(memo)
            #to the block. Handy for building up hashes or reducing collections down to one object
            # %w(foo bar).each_with_object({}) { |str, hsh| hsh[str] = str.upcase} returns...
            # {'foo' => 'FOO', 'bar', => 'BAR'}
            
        #Hash.new(0) sets default value for any key to 0, while {} sets 'nil'
        arr.each_with_object(Hash.new(0)) { |word, count| count[word] += 1}
        
        end


        
    
