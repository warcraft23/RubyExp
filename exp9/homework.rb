#!/usr/bin/ruby
def reverseWords(str)
	str=str.reverse
	arrayWordsReverse=str.split()
	arrayWords=arrayWordsReverse.collect {|n| n=n.reverse}.join(' ')
	puts arrayWords
end

print "Enter:"
str="I LOVE YOU"
str=gets
print "Result:"
reverseWords(str)
