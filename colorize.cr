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

colors.each_with_index do |x, idx|
  modes.each do |md|
    spawn do
      sleep 1 #idx / 10.0
      puts "Colour is #{x} - mode is #{md}".colorize(x).mode(md)
      atomic_count.add(1)
    end
  end
end

# Fiber.yield

while atomic_count.get < colors.size * modes.size
  sleep 0.1
end
