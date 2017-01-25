# Write first_pos, a method which takes a string and , returns a hash
# whose keys are all the words in the string, and values are the
# earliest position they were seen in the string.
#
# There will be no punctuation in the strings.
#
# first_pos "The dog and the cat and the cow" # => {"The" => 0, "dog" => 1, "and" => 2, "the" => 3, "cat" => 4, "cow" => 7}


    def first_pos(str)

    numbers_hash = {}
    
    #Split the string into an array (" ")
    arr = str.split(" ")
    
    #Iterate over the array, word as the key and index as the value
    arr.each_with_index do |word, index|
        
        #||= means
        #blah ||= blahhh blahhh
        #This means if blah is false, then set the value to blahhh blahhh, otherwise
        #leave it to what it was before.
    
    #Hash can take key as an argument. e.e Hash[key]

#In this case, if numbers_hash[word] is null, assign it to index, otherwise nothing
    numbers_hash[word] ||= index
    end
    
    numbers_hash
    end
