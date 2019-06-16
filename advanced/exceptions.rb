# Example with error
begin
    #try do something
    file = File.open('./hello')
    if file
        puts file.read
    end
rescue Exception => e
    #catch some error
    puts e
    # puts e.message
    # puts e.backtrace
end

# Example correct
# begin
#     #try do something
#     file = File.open('./hello.txt')
#     if file
#         puts file.read
#     end
# rescue Exception => e
#     #catch some error
#     puts e
# end

def sum_numbers(n1, n2)
    n1 + n2
rescue Exception => e
    puts e.message
end

sum_numbers('10', 2)