# Your code goes here!
class Anagram
	attr_accessor :word
	def initialize(word)
		@word = word
	end
	
	def match(array)
		matches = []
		array.each do |word|
			if anagram_check(word)
				matches << word
			end
		end
		matches
	end

	def anagram_check(word)
		@word.split("").sort == word.split("").sort
	end
	
end