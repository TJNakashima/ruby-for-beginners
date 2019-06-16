class CheckingAccount
    attr_accessor :balance, :message

    def initialize(balance)
        self.balance = balance
    end

    def withdrawal(value)
        if(value > self.balance)
            self.message = 'Balance is insufficients.'
        elsif (value > 700.00)
            self.message = 'Service limit is $700'
        else
            self.balance -= value
        end
    end
end