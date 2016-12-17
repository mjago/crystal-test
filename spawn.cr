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
count = 1
colors.each_with_index do |x, idx|
  modes.each do |md|
    spawn do
      sleep idx / 10.0
      puts "Colour is #{x} - mode is #{md}".colorize(x).mode(md)
      count += 1
    end
  end
end

#Fiber.yield
while count < colors.size * modes.size
  sleep 0.1
end
