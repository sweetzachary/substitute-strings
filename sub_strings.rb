def count_word(s, word)
    s.scan(word).length
end

def sub_strings(string, dict)
    dict.reduce({}) {|count, word| count.merge({word => count_word(string.downcase, word)})}.filter {|k, v| v != 0}
end

dictionary = ["below","down","go","going","horn",
              "how","howdy","it","i","low","own","part","partner","sit"]
puts sub_strings "Howdy partner, sit down! How's it going?", dictionary