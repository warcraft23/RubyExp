#迭代器
介绍迭代器，迭代器用于遍历集合内的元素，以达到特定操作。操作有each collect

##each迭代器
迭代器是一种独特的循环处理方式。 

```
#!/usr/bin/ruby
shuzu =Array[1,2,3,4,5]
shuzu.each {|n| puts 2*n }
```

##collect迭代器
不同于each迭代器连续访问集合中每个元素，collect迭代器从集合中获得各个元素，返回的结果生成新的集合。

```
#!/usr/bin/ruby
shuzu =Array[1,2,3,4,5]
shuzu_each=shuzu.each {|n| n=2*n }
shuzu_collect=shuzu.collect {|n| n=2*n}
puts "#{shuzu}"
puts "#{shuzu_each}"
puts "#{shuzu_collect}"
puts "#{shuzu}"
```

##作业
```
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
```