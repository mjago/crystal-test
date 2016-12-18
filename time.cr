was = Time.now
loop do
  now = Time.now
  p now
  count = now - was
  p count
  p count.to_i
  puts
  sleep 1
end
