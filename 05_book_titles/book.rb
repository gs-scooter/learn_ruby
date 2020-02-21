class Book
# write your code here
    attr_reader :title
    def title=(title)
        title_words = title.split
        new_title = []
        conjunctions = /\band/
        prepositions = /\bin\b|\bthe|\bof/
        articles = /\ba\b|\ban\b/
        title_words.each_with_index do |word, idx|
            if idx != 0 && (word =~ conjunctions || word =~ prepositions || word =~ articles)
                new_title << word
            else
                new_title << word.capitalize
            end
        end
        @title = new_title.join(" ")
    end
end
