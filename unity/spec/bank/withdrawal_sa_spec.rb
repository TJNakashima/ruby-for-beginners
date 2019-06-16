require_relative '../../app/bank'

describe SavingsAccount do

        describe 'Withdrawal' do
            context 'Sufficient balance' do
                before(:all) do
                    @sa = SavingsAccount.new(1000.00)
                    @sa.withdrawal(200.00)
                end
                it 'Update the balance' do
                    expect(@sa.balance).to eql 798.00
                end
            end

            context 'Zeroed balance' do
                before(:all) do
                    @sa = SavingsAccount.new(0.00)
                    @sa.withdrawal(100.00)
                end
                it 'See a message' do
                    expect(@sa.message).to eql 'Balance is insufficients.'
                end
                it 'The balance is the same' do
                    expect(@sa.balance).to eql 0.00
                end
            end

            context 'Insufficients balance' do
                before(:all) do
                    @sa = SavingsAccount.new(50.00)
                    @sa.withdrawal(100.00)
                end
                it 'See a message' do
                    expect(@sa.message).to eql 'Balance is insufficients.'
                end
                it 'The balance is the same' do
                    expect(@sa.balance).to eql 50.00
                end
            end

            context 'Exceeded transaction limit' do
                before(:all) do
                    @sa = SavingsAccount.new(1000.00)
                    @sa.withdrawal(501.00)
                end
                it 'See a message' do
                    expect(@sa.message).to eql 'Service limit is $500'
                end
                it 'The balance is the same' do
                    expect(@sa.balance).to eql 1000.00
                end
            end
        end
end