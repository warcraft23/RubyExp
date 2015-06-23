#模块
作用

1.把功能相似的函数房子啊同一个名称之下

2.方便调用方法

##模块示例
模块范例：模块名首字母和类一样需要大写

```
#!/usr/bin/ruby
module	Hello
	def self.helloPython
		print "Hello Python!\n"
	end
	def self.helloRuby
		print "Hello Ruby!\n"
	end
end
Hello.helloPython
Hello.helloRuby
```

##require语句
require语句等同于C语言中的include 用于加载模块文件

范例：

```
#!/usr/bin/ruby
$LOAD_PATH <<'.'
require 'module'
Hello.helloPython
Hello.helloRuby
```

##在类中引用模块
范例：现有模块文件

```
#!/usr/bin/ruby
module Week
	FIRST_DAY= "Sunday"
	def Week.weeks_in_month
		puts 'U have four weeks in a month'
	end
	def Week.weeks_in_year
		puts 'U have 52 weeks in a year'
	end
end
```

```
#!/usr/bin/ruby
$LOAD_PATH <<'.'
require "support"

class Decade
	include Week
	no_of_yrs=10
	def non_of_months
		puts Week::FIRST_DAY
		number=10*12
		puts number
	end
end
puts Week::FIRST_DAY
Week.weeks_in_month()
Week.weeks_in_year()

```

##mixins装置
Ruby不直接支持继承，但是Ruby的模块提供了mixins装置，几乎消除对多重继承的需要

```
#!/usr/bin/ruby

module A
	def a1
	end
	def a2
	end
end
module B
	def b1
	end
	def b2
	end
end

class Sample
	include A
	include B
	def s1
	end
end

sample=Sample.new
sample.a1()
sample.a2()
sample.b1()
sample.b2()
sample.s1()
```

这样就可以实现多重继承了

##作业思考
模块与代码块之间的区别

module有命名空间的作用 可以将类，方法，和常数组织在一起。module还有mixin的方法，可以在class内部include一个module来实现混入一个module里的实例方法

代码块，可以在调用函数的时候不仅传入参数，并传入代码块，使用yield来调用

代码块不仅可以匿名，也可以赋给一个handle

过程对象，可以被视为一个代码块的handle，在调用过程对象里的代码时，呼叫该过程对象的call方法即可，过程对象相当于其他语言的lambda表达式，但是比lambda表达式更加灵活与强大

>http://www.cnblogs.com/coderlee/archive/2008/01/16/1041583.html