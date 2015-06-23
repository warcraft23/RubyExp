#!/usr/bin/ruby
$i=0
$num=3
puts "begin until"
until $i==$num do
	puts ("inside loop(until) i = #$i")
	$i +=1
end
puts "end until"
$i=0
puts "begin do until"
begin
	puts ("inside loop(until) i = #$i")
	$i +=1
end until $i==$num
puts "end do until"