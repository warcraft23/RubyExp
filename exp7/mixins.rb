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