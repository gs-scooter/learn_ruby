#write your code here
def translate(sentence)
    words = sentence.split
    new_words = []
    words.each do |word|
        new_word = ""
        vowel_position = (/[aeiou]/ =~ word)

        if vowel_position == 0
            new_word = word
        else
            new_word = word[vowel_position..-1] + word[0...vowel_position]
        end

        new_words << new_word + "ay"
    end

    return new_words.join(" ")
end
