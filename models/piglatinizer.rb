class PigLatinizer

  attr_accessor :words


  def piglatinize(words)
    word_arr = words.split(" ")
    new_words = []

    vowels = ['a', 'e', 'i', 'o','u']
    constants = "bcdfghjklmnpqrstvwxyz".split("")

    word_arr.each do |word|
      if word.length == 1 || vowels.include?(word[0].downcase)
        new_words << word + "way"

      elsif constants.include?(word[0].downcase) && constants.include?(word[1].downcase) && constants.include?(word[2].downcase) && word_arr.length == 1
        new_words << word[3..-1]+word[0..2]+"ay"

      elsif constants.include?(word[0].downcase) && constants.include?(word[1].downcase) && constants.include?(word[2].downcase) && word_arr.length > 1
        new_words << word[3..-1]+word[0..2]+"ay"

      elsif constants.include?(word[0].downcase) && constants.include?(word[1].downcase) && new_words.length != 1
        new_words << word[2..-1]+word[0..1]+"ay"
      else
      new_words << word[1..-1]+word[0]+"ay"
    end
    end
    new_words.join(" ")
  end



end
