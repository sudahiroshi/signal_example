trap(:SIGHUP) do
  puts "SIGHUP !!"
end

#trap(:SIGTERM) do
  #puts "SIGTERM !!"
#end

trap(:SIGKILL) do
  puts "SIGKILL !!"
end

loop do 
  (Math.sqrt(rand(44)) ** 8).floor
  sleep 1
end

