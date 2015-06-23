#!/usr/bin/ruby
$i=0
$num=3
puts "begin while"
while $i<$num do
	puts ("inside loop(while) i = #$i")
	$i +=1
end
puts "end while"
$i=0
puts "begin do while"
begin
	puts ("inside loop(while) i = #$i")
	$i +=1
end while $i<$num
puts "end do while"