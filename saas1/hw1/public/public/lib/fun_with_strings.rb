module FunWithStrings

  def palindrome?

    l = self.downcase.scan(/\w/)

    l == l.reverse

  end

  def count_words

    word_hash = Hash.new(0)

    str = self.downcase

    str.scan(/\w+/).map{ |word| 

      word_hash[word] = str.scan(/\b#{word}\b/).size

    }

    return word_hash

  end

  def anagram_groups  

   words = self.downcase.scan(/\w+/)

   words.group_by { |word| word.chars.sort }.values   

  end  

end



# make all the above functions available as instance methods on Strings:



class String

  include FunWithStrings

end
