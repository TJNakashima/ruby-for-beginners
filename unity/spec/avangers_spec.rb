require_relative '../app/avenger'

#TDD
describe AvengerHeadQuarter do

    it 'Should add an avenger' do
        hq = AvengerHeadQuarter.new

        hq.put('Spiderman')
        expect(hq.list).to eql ['Spiderman']
    end

    it 'Should add a list of revenger' do
        hq = AvengerHeadQuarter.new

        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')
        # expect(hq.list).to include 'Thor'

        expect(hq.list.size).to be > 0
        
        # res = hq.list.size > 0
        # expect(res).to be true
    end

    it 'Thor should be the first' do
        hq = AvengerHeadQuarter.new

        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')

        expect(hq.list).to start_with('Thor')
    end

    it 'Ironman should be the last' do
        hq = AvengerHeadQuarter.new

        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')
        hq.put('Ironman')

        expect(hq.list).to end_with('Ironman')
    end

    it 'Should have last name' do
        avenger = 'Peter Parker'

        expect(avenger).to match(/Parker/)
        expect(avenger).not_to match(/Taynara/)
    end
end