  def reverse(string)
    new_string = ""

    i = 0 
    while i < string.length
      new_string = string[i] + new_string
      i += 1
    end
    return new_string
  end

