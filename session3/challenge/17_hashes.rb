# Print to stdout, each element in a hash based linked list, in reverse.
# If you don't know what that is, go check out the previous problem.
#
# EXAMPLES:
# head = {:data => 1, :next => nil}
# head = {:data => 2, :next => head}
#
# print_list_in_reverse head   # >> "1\n2\n"


#Recursion
#Creating a method that creates a linked list. The linked list points to each node at the end of the list.
#The last element of the linked list, that node points to nil. Then the recursive loop ends,
#since it has hit it's base case. If there was no base case, it would become an infinite loop.

    def print_list_in_reverse(list)
    return unless list
    print_list_in_reverse list[:next]
        puts list[:data]
    end

#print_list_in_reverse head = {:data => 1, :next => nil}
#print_list_in_reverse head = {:data => 2, :next => head}
#print_list_in_reverse head = {:data => 3, :next => head}
#print_list_in_reverse head = {:data => 4, :next => head}
#p print_list_in_reverse head = {:data => 5, :next => head}
#Result to...

#1
#1
#2
#1
#2
#3
#1
#2
#3
#4
#1
#2
#3
#4
#5
