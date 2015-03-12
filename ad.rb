#!env ruby
require 'colorize'

mytext = File.open("ad.txt")
system 'cls'
system("color 3f")

colored = FALSE
mytext.each_char  do |char|
  if char == "*"
    colored = !colored
    print colored ? "\033[1m\033[34m" : "\033[0m"
    next
  elsif char == "`"
    colored = !colored
    print colored ? "\033[33m" : "\033[0m"
    next
  elsif char == "?"
    print "\033[5m?\033[25m\033[0m"
    next
  end

  sleeptime = 0
  if char == "\n"
    sleeptime = rand(200) / 1000.0
  elsif char ==""
    sleeptime = rand(200) / 5000.0
  else
    sleeptime = rand(200) / 3000.0
  end
  sleep sleeptime
  print char
end
