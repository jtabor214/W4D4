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

    def largest_contiguous_subsum # O(n^5)
        result = self.sub_arrays # O(n^2) or 1
        result.map!{|ele| ele.sum}.max # 0(n^3)
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

    def largest_contiguous_subsum2
        max = self[0] # 1
        current = self[0] # 1

        i = 1
        (1...self.length).each do |i| # 0(n)
            current += self[i] # 1
            max = current if max < current # 1
            current = 0 if current < 0 # 1 
            max = self[i] if self[i] > max # 1
        end 

        return max
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

p [2, 3, -6, 7, -6, 7].largest_contiguous_subsum2
p [-5, -1, -3].largest_contiguous_subsum2

arr1 = [-2, 1, -3, 4, -1, 2, 1, -5, 4]
p arr1.largest_contiguous_subsum2