5.times do
    puts 'Repeat the message'
end

# to_s = to string
5.times do |i|
    puts 'Repeat the message. Number: ' + i.to_s
end

while init <= 10 do
    puts 'Repeat: ' + init.to_s
    init += 1
end