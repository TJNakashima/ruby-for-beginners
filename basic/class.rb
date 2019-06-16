# On ruby everything is an object
# Class has attribute(characters) and methods(action)

class Car
    attr_accessor :name

    def turn_on
        puts 'Ready to run'
    end

end

civic = Car.new
civic.name = 'Civic'
puts civic.class
puts civic.name
civic.turn_on