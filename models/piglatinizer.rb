class PigLatinizer
 attr_reader :user_phrase

 def pig_latinizer(word) #pig latinizes one word
   if word =~ (/\A[aeiou]/i)
     word = word + 'way'
   elsif word =~ (/\A[^aeiou]/i)
     match = /\A[^aeiou]*/i.match(word)
     word = match.post_match + match.to_s + 'ay'
   end
   word
 end

 def piglatinize(text)
   text.split(" ").map { |e| pig_latinizer(e) }.join(" ") #making into a sentence
 end

end
