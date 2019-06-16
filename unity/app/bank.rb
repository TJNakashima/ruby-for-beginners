class Account
    attr_accessor :balance, :message

    def initialize(balance)
        self.balance = balance
    end

    def withdrawal(value, max, taxes)
        if(value > self.balance)
            self.message = 'Balance is insufficients.'
        elsif (value > max)
            self.message = "Service limit is $#{max}"
        else
            self.balance -= value + taxes
        end
    end
end

class CheckingAccount < Account
    def withdrawal(value, max=700, taxes=5.00)
        #super = search the same code on father
        super
    end
end

class SavingsAccount < Account
    def withdrawal(value, max=500, taxes=2.00)
        super
    end
end
