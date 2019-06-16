require_relative '../app/bank'

describe CheckingAccount do

        describe 'Withdrawal' do
            context 'Sufficient balance' do
                before(:all) do
                    @account = CheckingAccount.new(1000.00)
                    @account.withdrawal(200.00)
                end
                it 'Update the balance' do
                    expect(@account.balance).to eql 800.00
                end
            end

            context 'Zeroed balance' do
                before(:all) do
                    @account = CheckingAccount.new(0.00)
                    @account.withdrawal(100.00)
                end
                it 'See a message' do
                    expect(@account.message).to eql 'Balance is insufficients.'
                end
                it 'The balance is the same' do
                    expect(@account.balance).to eql 0.00
                end
            end

            context 'Insufficients balance' do
                before(:all) do
                    @account = CheckingAccount.new(50.00)
                    @account.withdrawal(100.00)
                end
                it 'See a message' do
                    expect(@account.message).to eql 'Balance is insufficients.'
                end
                it 'The balance is the same' do
                    expect(@account.balance).to eql 50.00
                end
            end

            context 'Exceeded transaction limit' do
                before(:all) do
                    @account = CheckingAccount.new(1000.00)
                    @account.withdrawal(701.00)
                end
                it 'See a message' do
                    expect(@account.message).to eql 'Service limit is $700'
                end
                it 'The balance is the same' do
                    expect(@account.balance).to eql 1000.00
                end
            end
        end
end