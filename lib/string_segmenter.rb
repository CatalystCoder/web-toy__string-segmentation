require_relative'dictionary'

class Segmenter

  def segment_string(str)
    i = 0
    index = -1
    cut = 1
    arr = []

  
    while i < str.length
      test_word = str[index, cut]

      if valid_word?(test_word)
        arr << test_word
        index -= 1
        cut = 1
      
      else valid_word?(test_word) == false
        index -= 1
        cut += 1

      end
      i +=1
    end
    arr.reverse
  end
end