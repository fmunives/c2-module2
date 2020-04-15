def exec_time(proc)
  begin_time = proc.call
  Time.now - begin_time
end

puts exec_time(Proc.new {Time.now} )