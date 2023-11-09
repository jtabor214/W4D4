class Array

    def my_min
        self.sort[0] #sort = O(nlogn)
    end 

    def my_min2 #O(n)
        min = self[0] #1
        (0...self.length).each do |i| #O(n)
            min = self[i] if self[i] < min #1
        end 
        min #1
    end

    def largest_contiguous_subsum
        result = self.sub_arrays
        result.map! {|ele| ele.sum}.max
    end

    def sub_arrays #O(n^2)
        subs = [] #1
        (0...self.length).each do |i| #O(n)
            (i...self.length).each do |j| #O(n)
                subs << self[i..j] #1
            end
        end
        subs #1
    end

    

    



end

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p list.my_min2  # =>  -5

list = [5, 3, -7]
p list.largest_contiguous_subsum # => 8
p list.sub_arrays

# possible sub-sums
[5]           # => 5
[5, 3]        # => 8 --> we want this one
[5, 3, -7]    # => 1
[3]           # => 3
[3, -7]       # => -4
[-7]          # => -7