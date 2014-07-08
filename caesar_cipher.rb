def caesar_cipher(str, key)
	alphabet_lc = ('a'..'z').to_a
	alphabet_uc = ('A'..'Z').to_a
	key = key.to_int
	str = str.split('')
	new_str = ''

	str.each do |x|
		if alphabet_lc.include?(x)
			new_index = (alphabet_lc.index(x) + key) % 26
			new_str << alphabet_lc[new_index]
		elsif alphabet_uc.include?(x)
			new_index = (alphabet_uc.index(x) + key) % 26
			new_str << alphabet_uc[new_index]
		else
			new_str << x
		end
	end

	return new_str
end
