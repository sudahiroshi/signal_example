class Sigtest
  attr_accessor :num
  def initialize
    @num = 0
    trap(:SIGTERM) do
      @num += 1
    end
  end
end

sig = Sigtest.new
loop do
  sleep 5
  puts "-> " + sig.num.to_s
end
