def first_anagram?(string1, string2)
    anagrams = string2.chars.permutation.to_a
    anagrams.each do |word|
        return true if word.join("") == string1
    end
    false   
end

p first_anagram?("aba", "dog")
p first_anagram?("aba", "baa")