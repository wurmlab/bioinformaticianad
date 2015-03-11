code = File.open("ad.txt")
system 'cls'
system("color 0a")

code.each_char  do |char|
  sleeptime = 0
  if char == "\n"
    sleeptime = rand(100) / 3000.0
  elsif char ==""
    sleeptime = rand(100) / 1000.0
  else
    sleeptime = rand(100) / 1000.0
  end
  sleep sleeptime
  print char
end
