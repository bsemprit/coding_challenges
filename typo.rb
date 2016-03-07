def typo?(string, stringtwo)
	string1 =  string.split("")
	string2 = stringtwo.split("")
	typo = 0

	string1.each_with_index do |letter, i|
		if string2[i] == letter
			typo+= 1
		elsif i == 0 
			i = 1
			puts string2[i-1]
			if string2[i-1] == letter
			typo+=1
			end
		elsif i !=0 && string2[i-1] == letter
			typo+=1
		end
		typo	
	end

		puts typo
		if typo == string1.length
			return true
		elsif typo == (string1.length - 1)
			return true
		elsif typo == (string1.length + 1)
			return true
		else
			return false
		end


end





puts typo?("cake", "ake") #=> true
puts typo?("cake", "cakes") #=> true
puts typo?("cake", "cke") #=> true
puts typo?("cake", "ck") #=> false
puts typo?("cake", "casker") #=> false
puts typo?("cake", "base") #=> false