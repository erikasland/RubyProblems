def capitalize_words(string)
	string.split.map {|x| x.capitalize}.join(" ")
end

capitalize_words("meee you i")