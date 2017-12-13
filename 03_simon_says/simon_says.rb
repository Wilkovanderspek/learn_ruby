#write your code here
def echo(a)
  return a
end

def shout(b)
  return b.upcase
end

def repeat(c, times = 2)
  return ([c] * times).join(" ")
end

def start_of_word(d, e)
  word_array = d.split(//)
  start_array = []
  for f in 0..(e-1)
   start_array << word_array[f]
 end
 return start_array.join
end

def first_word(g)
  line_array = g.split(/ /)
  return line_array[0]
end

def titleize(h)
  title_array = h.split.map do |word|
    if %w(the and over).include?(word)
      word
    else
      word.capitalize
    end
  end
  title_array[0].capitalize!
  title_array.join(" ")
end
