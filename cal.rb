#!/usr/bin/env ruby

$LOAD_PATH << "lib"
require 'zeller'

m =  ARGV[0]
y = ARGV[1]

m = Month.new(m, y)

puts month.to.s
