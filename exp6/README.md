#循环与判断
介绍Ruby中的循环与判断。其中循环有while、until循环，判断有if、case判断

##循环
###while循环

```
while conditional [do]
	code
end
```
当conditional为true则执行code

或者

```
code while condition
```
与

```
begin
	code
end while conditional
```
当conditional为真时执行code

###until循环
语法1：

```
until conditional [do]
	code
end
```

语法2：

```
code until conditional
```

或者

```
begin
	code
end until conditional
```

PS: do...while是当条件成立执行code；do...until是当条件成立不执行code

###for break next语句
for范例1：

```
#!/usr/bin/ruby
for i in 0..5
	puts "Value of local variable is #{i}"
end
```

for范例2：

```
#!/usr/bin/ruby
(0..5).each do |i|
	puts "Value of local variable is #{i}"
end
```

next范例：

```
#!/usr/bin/ruby
for i in 0..5
	if i<2 then
		next
	end
	puts "Value of local variable is #{i}"
end
```

break范例：

```
#!/usr/bin/ruby
for i in 0..5
	if i>2 then
		break
	end
	puts "Value of local variable is #{i}"
end
```

###redo和retry
redo范例：重新开始最内部循环的该次迭代，不检查循环条件，结果是无限循环

```
#!/usr/bin/ruby
for i in 0..5
	if i<2 then
		puts "Value of local variable is #{i}"
		redo
	end
end
```

那么retry是出现在begin表达式的rescue语句中，从begin主体的开头重新开始执行

语法：

```
begin
	do something #抛出异常
rescue
	#处理异常
	retry #重新从begin开
end
```

如果retry出现在迭代内、块内或者for表达式主体内，则重新开始迭代调用。迭代的参数会重新评估。

范例：

```
#!/usr/bin/ruby
n=0
begin 
	puts 'Try to do sth'
	raise 'oops'
rescue => ex
	puts ex
	n+=1
	retry if n<3
end
puts 'OK ,I give up'
```

##判断
###if语句
if范例1：

```
#!/usr/bin/ruby
x=1
if x>2 then
	puts "x is larger than 2"
elsif x<=2 and x!=0
	puts 'x is 1'
else
	puts "I can't guess"
end
```

if范例2：

```
#!/usr/bin/ruby
$debug=1
print "debug\n" if $debug
```

###unless语句
除非语句

unless范例1：

```
#!/usr/bin/ruby
x=1
unless x>2
	puts 'x is less than 2'
else
	puts 'x is larger than 2'
end
```

unless范例2：

```
#!/usr/bin/ruby
$var=1 
print "1 -- Value is set\n" if $var
print "2 -- Value is set\n" unless $var

$var=false #不能写成0
print "3 -- Value is set\n" unless $var
```

###case语句
范例：

```
#!/usr/bin/ruby

$age=56

case $age
	when 0..2
		puts "baby"
	when 3..6
		puts "little children"
	when 7..12
		puts "children"
	when 13..18
		puts "youth"
	else
		puts "adult"
	end		
```