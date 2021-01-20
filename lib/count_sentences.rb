require 'pry'

class String

  def sentence?
    string_array = self.split("")
    string_array.last == "."
  end

  def question?
    string_array = self.split("")
    string_array.last == "?"
  end

  def exclamation?
    string_array = self.split("")
    string_array.last == "!"
  end

  def count_sentences
    # binding.pry
    string_array = self.split(".")
    string_array = string_array.join("?").split("?")
    string_array = string_array.join("!").split("!")
    #binding.pry
    string_array.delete("") #If there are repeating punctuacting marks, deletes those empty arrays. Example "My mom rocks!!".split("!")  == ["My mom rocks",""].delete("") == ["My mom rocks"]
    string_array.count
  end
end