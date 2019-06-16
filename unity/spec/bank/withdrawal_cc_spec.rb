require_relative '../../app/bank'

describe CheckingAccount do

        describe 'Withdrawal' do
            context 'Sufficient balance' do
                before(:all) do
                    @ca = CheckingAccount.new(1000.00)
                    @ca.withdrawal(200.00)
                end
                it 'Update the balance' do
                    expect(@ca.balance).to eql 795.00
                end
            end

            context 'Zeroed balance' do
                before(:all) do
                    @ca = CheckingAccount.new(0.00)
                    @ca.withdrawal(100.00)
                end
                it 'See a message' do
                    expect(@ca.message).to eql 'Balance is insufficients.'
                end
                it 'The balance is the same' do
                    expect(@ca.balance).to eql 0.00
                end
            end

            context 'Insufficients balance' do
                before(:all) do
                    @ca = CheckingAccount.new(50.00)
                    @ca.withdrawal(100.00)
                end
                it 'See a message' do
                    expect(@ca.message).to eql 'Balance is insufficients.'
                end
                it 'The balance is the same' do
                    expect(@ca.balance).to eql 50.00
                end
            end

            context 'Exceeded transaction limit' do
                before(:all) do
                    @ca = CheckingAccount.new(1000.00)
                    @ca.withdrawal(701.00)
                end
                it 'See a message' do
                    expect(@ca.message).to eql 'Service limit is $700'
                end
                it 'The balance is the same' do
                    expect(@ca.balance).to eql 1000.00
                end
            end
        end
end