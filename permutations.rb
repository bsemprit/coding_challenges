def permutations?(str1, str2)
	string1 = str1.downcase.split("")
	string2 = str2.downcase.split("")
	l2 = 0
	l1 = 0
	string1.each do |letter|
		l1 += letter.ord
	end

	string2.each do |letter2|
			l2 += letter2.ord
		end

	if l1 == l2
		return true
	else
		return false 
	end
end

puts permutations?("presentable", "albrnpeetse")  #=> true
puts permutations?("presentable", "raelsbtpene")  #=> true
puts permutations?("presentable", "taco")         #=> false
puts permutations?("taco", "cato")                #=> true
puts permutations?("taco", "cat") 