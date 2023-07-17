class Taiyaki
    attr_accessor :taste
    attr_accessor :price
    def initialize(taste, price)
        @taste = taste
        @price = price
    end    
    def test
        puts "#{@taste}, #{@price}"
    end
end    