require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else
      false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      true
    else
      false
    end
  end

  def count_sentences
    #self.split(".").length
    chars = self.squeeze
    counter = 0
    chars.each_char do |char|
      if char == "." || char == "!" || char == "?"
        counter += 1
      end
    end
    counter 
  end
end
