#write your code here

  #method takes a sentence as a parameter
  def translate(sentence)
    #we .split that sentence. Because we do not give a limit, the sentence is automaticly split along the spaces.
    #we .map the result of the .split to make every word in the array a variable= word.
    sentence.split.map do |word|
      #We define what the first vowel of the word is by a different method (first_vowel) and assign it as variable v
      v = first_vowel(word)
      # we slice of the first vowel and the letter preceding that. then we add the first letter of the word at the end, and add +ay
      word.slice(v..-1) + word[0,v] + "ay"
    #We end the function and join the retunring array with spaces in between.
  end.join(" ")
  end

  def first_vowel(word)
    if word[/^[qu]/]
      2
    else
      word.gsub(/[aeiou].*$/, '').size
    end
  end
