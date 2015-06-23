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