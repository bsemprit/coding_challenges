def palindrome?(string)
	pal = string.gsub(/\W/, "")
	pal2 = pal.split("")
	pal3 = pal.split("")
	pal3.reverse!

	pal2 == pal3


end


puts palindrome?("a car, a man, a maraca")  #=> true
puts palindrome?("campus motto: bottoms up mac")  #=> true
puts palindrome?("maps, dna, and spam")  #=> true
puts palindrome?("racecar")  #=> true
puts palindrome?("there's no place like home") #=> false
puts palindrome?("i like pizza")  #=> false