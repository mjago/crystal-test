require "io/console"
require "colorize"

colors = [:black,
       :red,
       :green,
       :yellow,
       :blue,
       :magenta,
       :cyan,
       :light_gray,
       :dark_gray,
       :light_red,
       :light_green,
       :light_yellow,
       :light_blue,
       :light_magenta,
       :light_cyan,
       :white
      ]

modes = [
  :bold,
  :bright,
  :dim,
  :underline,
  :blink,
  :reverse,
  :hidden
]

atomic_count = Atomic.new(1)

channel = Channel(Int32).new

colors.each_with_index do |x, idx|
  modes.each do |md|
    spawn do
      sleep 0.2
      puts "Colour is #{x} - mode is #{md}".colorize(x).mode(md)
      atomic_count.add(1)
      channel.send(atomic_count.get)
    end
  end
end

# Fiber.yield


while true
  count = channel.receive
  puts count
  break unless count < (colors.size * modes.size)
end
