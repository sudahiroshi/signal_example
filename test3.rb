class Sigtest
  attr_accessor :interval
  def initialize
    @interval = 1
    trap(:SIGTERM) do
      @interval += 0.1
    end
    trap(:SIGINT) do
      @interval -= 0.1
    end
  end
end

sig = Sigtest.new
loop do
  sleep sig.interval
  print "."
end
