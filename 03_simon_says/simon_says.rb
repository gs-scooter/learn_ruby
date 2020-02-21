#write your code here
def echo(string)
    return string
end

def shout(string)
    return string.upcase
end

def repeat(string, count = 2)
    return ("#{string} " * count).strip
end

def start_of_word(string, length)
    return string[0, length]
end

def first_word(sentence)
    return sentence.split[0]
end

def titleize(string)
    little_words = ["and", "over", "the"]
    words = string.split
    words.each_with_index { |w,i| words[i] = little_words.include?(w) && i > 0 ? words[i] : w.capitalize }
    new_string = words.join(" ")
    return new_string
end
