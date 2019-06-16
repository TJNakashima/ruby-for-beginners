5.times do
    puts 'Repeat the message'
end

# to_s = to string
5.times do |i|
    puts 'Repeat the message. Number: ' + i.to_s
end

init=0
while init <= 10 do
    puts "Repeat: #$init"
    init +=1
end

for item in (0...10)
    puts 'Repeat: ' + item.to_s
end

revengers = ['Ironman', 'Hulk', 'Spiderman', 'Thor']
revengers.each do |v|
    puts 'Revenger: ' + v
end