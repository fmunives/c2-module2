def writeName(name)
  file  = File.open("write_name.txt", 'w')
  file.write(name)
  file.close
  print "#{name} was written on write_name.txt\n"
end

print "What's your name?\n"
name = gets.chomp

writeName(name)