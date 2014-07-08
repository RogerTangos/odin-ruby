dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(sentence, dict)
	word_array = sentence.split(' ')
	word_count = Hash.new(0)

	p word_array
	p word_count

	word_array.each do |single|
		dict.each do |word|
			count = single.scan(/#{word}/).length
			word_count[word] += count unless count == 0 
		end 
	end

	return word_count
end 