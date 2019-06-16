class CheckingAccount
    attr_accessor :balance

    def initialize(balance)
        self.balance = balance
    end

    def withdrawal(value)
        self.balance -= value
    end
end

describe CheckingAccount do

        describe 'Withdrawal' do
            context 'When the value is positive' do
                before(:all) do
                    @account = CheckingAccount.new(1000.00)
                    @account.withdrawal(200.00)
                end
                it 'Update the balance' do
                    expect(@account.balance).to eql 800.00
                end
            end
        end
end