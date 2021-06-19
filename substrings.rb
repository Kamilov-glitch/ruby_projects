dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
    substring_array = []
    for x in 0..string.length - 1
        for y in x..string.length - 1
            substring_array.push(string[x..y].downcase)
        end
    end
    substring_array.reduce(Hash.new(0)) do |result, substring|
        result[substring] += 1 if dictionary.include?(substring)
        result
    end
end

p substrings("Howdy partner, sit down! How's it going?", dictionary)