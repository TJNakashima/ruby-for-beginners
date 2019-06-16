class BankAccount
    attr_accessor :balance, :name

    def initialize(name)
        self.balance = 0.00
        self.name = name
    end

    def deposit(value)
        self.balance += value
        puts "Deposit the value: #{value} on #{self.name}'s account."
    end

end

c = BankAccount.new('Taynara')
c.deposit(100.00)
puts c.balance
puts c.name