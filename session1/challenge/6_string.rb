# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
# 
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
# 
# odds_and_evens("abcdefg",true)    # => "bdf"
# odds_and_evens("abcdefg",false)   # => "aceg"

def odds_and_evens(string, return_odds)
    
    new_string = ""
    
    string.split('').each_with_index {|letter, index|
        if return_odds == true && index % 2 == 1
            new_string << letter
            elsif return_odds == false && index % 2 == 0
            new_string << letter
            end
            }
    
            
        new_string
end
