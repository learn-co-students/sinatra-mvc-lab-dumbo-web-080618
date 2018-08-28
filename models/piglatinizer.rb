class PigLatinizer 

  def piglatin_word(word)
    new_word =''
    if word.downcase.scan(/\A[aeiou]+/).size >= 1
      new_word = word + 'way'
    elsif word.scan(/\A[^aeiou]+/).size >= 1
      ending = word.scan(/\A[^aeiou]+/).join
      word.gsub!(/\A[^aeiou]+/,'')
      new_word = word + ending + 'ay'
    end
    new_word
  end

  def piglatinize(word)
    words = word.split(' ')
    piglatin_words = []
    words.each{|word| 
      piglatin_words << piglatin_word(word)}
    piglatin_words.join(' ')
  end


end