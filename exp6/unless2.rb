#!/usr/bin/ruby
$var=1 
print "1 -- Value is set\n" if $var
print "2 -- Value is set\n" unless $var

$var=false #不能写成0
print "3 -- Value is set\n" unless $var