# Write a method, reverse_map, which invokes a block on each of the elements in reverse order,
# and returns an array of their results.
#
# reverse_map(1, 2, 3) { |i| i * 2 }      # => [6, 4, 2]

#Define the method, list optional elements and a block of code (undefined)
#& Ampersand used to call the proc, it is used to explicitly accept a block.
#You need to force the use of Ampersand in order to accept a block. 

    def reverse_map(*args, &block)
        args.reverse.map(&block)

    end
