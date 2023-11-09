def first_anagram?(string1, string2) # O(n!)
    anagrams = string2.chars.permutation.to_a
    anagrams.each do |word|
        return true if word.join("") == string1
    end
    false   
end

def second_anagram?(string1, string2) # O(n^2)
    string2 = string2.chars # O(n)
    string1.chars.each_with_index do |char, idx|  # O(n)
        if string2.find_index(char) != nil  # O(n)
            target_idx = string2.find_index(char) # O(1)
            string2.delete_at(target_idx) # O(1)
        end      
    end
    string2.empty? # O(1)
end 

p second_anagram?("aba", "dog")
p second_anagram?("aba", "baa")