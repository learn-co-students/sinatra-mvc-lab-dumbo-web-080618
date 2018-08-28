class PigLatinizer
  @@consonents = ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z"]
  @@vowels = ["a","e","i","o","u"]
  def piglatinize(phrase)
    words = phrase.split(" ")
    result = ""
    words.each do |word|
      transformed_word = ""
      if (@@consonents.include?(word[0].downcase))
        if (@@consonents.include?(word[1].downcase))
          end_index = 1
          while @@consonents.include?(word[end_index])
            end_index += 1
          end
        end_index -= 1
          transformed_word += word[end_index+1..word.length]
          transformed_word += word[0..end_index] + "ay"
          result += transformed_word
        else
          transformed_word += word[1..word.length]
          transformed_word += word[0] + "ay"
          result += transformed_word
        end
      else
        transformed_word += word + "way"
        result += transformed_word
      end
      result += " "
    end
    result.strip
  end
end
