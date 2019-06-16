# The file must always end with _spec.rb
describe 'suite rspec' do

    it 'Sum of values: correct' do
        soma = 10 + 5
        expect(soma).to eql 15
    end
    
    # it 'Sum of values: wrong' do
    #     soma = 10 + 5
    #     expect(soma).to eql 20
    # end
end