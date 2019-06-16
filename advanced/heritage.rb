class Vehicle
    attr_accessor :name, :brand, :model

    def initialize(name, brand, model)
        self.name = name
        self.brand = brand
        self.model = model
    end

    def turn_on
        puts "#{name} is ready to start the journey."
    end

    def honk
        puts "Beep, beep!"
    end
end

class Car < Vehicle 
    def driver
        puts "#{name} starting the route"
    end
end

class Motorcycle < Vehicle
    def ride
        puts "#{name} starting the route"
    end
end

civic = Car.new('Civic', 'Honda', 'SI')
puts civic.name
civic.turn_on

lancer = Car.new('Lancer', 'Mitsubishi', 'EVO')
lancer.honk
lancer.driver

fazer = Motorcycle.new('Fazer', 'Yamaha', '250x')
fazer.turn_on
fazer.honk
fazer.ride