def substrings(string, dictionary)
    #creat new hash
    return_hash = Hash.new(0)
    #downcase all words and convert to array 
    string_array = string.downcase.split

    dictionary.each do |word|
        string_array.each do |element|
        (element.include? word) ? return_hash[word] += 1 : word
        end
    end
p return_hash
            
end
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", dictionary)

#chekcing 

