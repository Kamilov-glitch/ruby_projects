# Two versions of caesar cipher which is a type of cipher that you can learn more about in wikipedia

def caesar_cipher2(string, num)
    char_array = string.split("")
    cipher_array = char_array.map do |char| 
      if char.downcase.between?("a","z") && char.downcase.ord + num  < 'z'.ord
        (char.ord + num).chr
      elsif char.downcase.between?("a","z") && char.downcase.ord + num >= 'z'.ord
        if char.downcase == char
          ('a'.ord + (num - ('z'.ord - char.downcase.ord + 1))).chr 
        else
          ('A'.ord + (num - ('z'.ord - char.downcase.ord + 1))).chr
        end 
      else
        char
      end
    end
    cipher_array.join
end

def caesar_cipher(string, num)
  lower_case_letter_array = ('a'..'z').to_a
  upper_case_letter_array = ('A'..'Z').to_a
  cipher_array = string.split("").map do |char|
    if lower_case_letter_array.include?(char) && lower_case_letter_array.index(char) + num < lower_case_letter_array.length
      lower_case_letter_array[lower_case_letter_array.index(char) + num]
    elsif upper_case_letter_array.include?(char) && upper_case_letter_array.index(char) + num < upper_case_letter_array.length
      upper_case_letter_array[upper_case_letter_array.index(char) + num]
    elsif lower_case_letter_array.include?(char) && lower_case_letter_array.index(char) + num >= lower_case_letter_array.length
      lower_case_letter_array[ num - (lower_case_letter_array.length - (lower_case_letter_array.index(char))) ]
    elsif upper_case_letter_array.include?(char) && upper_case_letter_array.index(char) + num >= upper_case_letter_array.length
      upper_case_letter_array[ num - (upper_case_letter_array.length - (upper_case_letter_array.index(char))) ]
    else
      char
    end
  end
  cipher_array.join
end

puts "What text would you like to cipher? Enter below:"
a_string = gets.chomp
puts "Now enter a number please, its important for caesar cipher (oopps, it should have been a secret):"
a_number = gets.chomp.to_i

puts caesar_cipher2(a_string, a_number)
puts caesar_cipher(a_string, a_number)
puts caesar_cipher2("Very beautiful ala!$%!, 7", 7)
puts caesar_cipher("Very beautiful ala!$%!, 7", 7)

