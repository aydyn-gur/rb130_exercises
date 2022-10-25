items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

gather(items) do |*item1, item2|
  puts item1.join(', ')
  puts item2
end

gather(items) do |item1, *item2, item3 |
  puts item1
  puts item2.join(', ')
  puts item3
end

gather(items) do |item1, *item2|
  puts item1
  puts item2.join(', ')
end

gather(items) do |apples, corn, cabbage, wheat|
  puts [apples, corn, cabbage, wheat].join(', ')
end
