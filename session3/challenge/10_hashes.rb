# Lets represent a file system with hashes
# You will be passed a hash table, whose keys represent folders.
# Their values will either be arrays of filenames in that directory
# or they will be hashes with the same rules (a treelike structure)
#
# Your job is to take the hashes, and return an array containing
# all of the complete file paths where each directory is separated by a '/'
#
# HINT:
#   [1,2,3].is_a? Array # => true
#   [1,2,3].is_a? Hash  # => false
#   {1=>1}.is_a?  Array # => false
#   {1=>1}.is_a?  Hash  # => true
#
# HINT2:
#   Don't feel constrained, you may create any methods, classes, etc, that
#   you need to you may address the problem in any way you need to (I
#   haven't tried it yet, but will probably use a recursive approach)
#
# EXAMPLES:
#
# pathify 'usr' => {'bin' => ['ruby'] }                                                        # => ['/usr/bin/ruby']
# pathify 'usr' => {'bin' => ['ruby', 'perl'] }                                                # => ['/usr/bin/ruby', '/usr/bin/perl']
# pathify 'usr' => {'bin' => ['ruby'], 'include' => ['zlib.h'] }                               # => ['/usr/bin/ruby', '/usr/include/zlib.h']
# pathify 'usr' => {'bin' => ['ruby']}, 'opt' => {'local' => {'bin' => ['sqlite3', 'rsync']} } # => ['/usr/bin/ruby', 'opt/local/bin/sqlite3', 'opt/local/bin/rsync']
# pathify                                                                                      # => []
#
#
# create it from scratch :)


    #Create a method which creates a new hash
    def pathify(paths = {})
        
        #Checks if the path is an array
        #Then separates the paths with /
        return paths.map {|path| '/' + path } if paths.is_a?(Array)
        
        #The recursive step / Recursion
        #First, create a new array to append to
        to_return = []
        
        #Iterate over paths with parent_path and child_dirs
        paths.each do |parent_path, child_dirs|
        #Add / in front of the parent path
        parent_path = '/' + parent_path #paths begin with a /
        #Runs the child path through the pathify method, which adds / if it is
        #an array
        child_paths = pathify child_dirs #Converts child directories to paths
        #Iterates over the child elements in the child_path
        #And joins the child and parent path
        child_paths.each do |child_path| #Joins each child path to it's parent path
            #Now we append the parent path and child path
            #to the array to_return
            to_return << (parent_path + child_path)
            end
        end
    #Call the array
    to_return
end
