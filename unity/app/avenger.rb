class AvengerHeadQuarter
    attr_accessor :list

    def initialize
        self.list = []
    end

    def put(avenger)
        self.list.push(avenger)
    end

end