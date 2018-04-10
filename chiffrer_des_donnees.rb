def caesar_cipher(string, shift)
    
    letters = string.split("")
    shifted_string = []
    punctuation = [",", " ", ".", "!", "?", "'", ";", ":"]
    letters.each do |letter|
        if punctuation.include?(letter)
            shifted_value = letter
        else
            if letter.ord > "Z".ord 
                shifted_value = letter.ord + shift
                if shifted_value > "z".ord 
                    shifted_value -= 26 
                end
            else 
                shifted_value = letter.ord + shift 
                if shifted_value > "Z".ord 
                    shifted_value -= 26 
                end
            end
            shifted_value = shifted_value.chr
        end
        shifted_string.push(shifted_value)
    end
    shifted_string.join
end

puts caesar_cipher("What a string!", 5)