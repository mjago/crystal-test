require "io/console"
require "colorize"

# io_benchmark.cr
require "benchmark"

io = MemoryIO.new

Benchmark.ips do |x|
  x.report("without to_s") do
    io << "Colour is :red".colorize(:red)
    #    p io
    io.clear
  end

  x.report("with to_s") do
    io << "Colour is :red".colorize(:red).to_s
    #    p io
    io.clear
  end

  x.report("with to_s.to_s") do
    io << "Colour is :red".colorize(:red).to_s
    #    p io
    io.clear
  end
end
