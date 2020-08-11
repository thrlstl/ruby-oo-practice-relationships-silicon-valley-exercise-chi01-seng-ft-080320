class VentureCapitalist

    attr_reader :name, :total_worth

    @@all = []

    def initialize(name, total_worth)
        @name = name
        @total_worth = total_worth

        @@all << self
    end

    def offer_contract(startup, investment)
        FundingRound.new(startup, self, investment)
    end

    def funding_rounds
        my_rounds = FundingRound.all.select {|instance| instance.venture_capitalist == self}
        my_rounds.count
    end
    
    def portfolio
        my_rounds = FundingRound.all.select {|instance| instance.venture_capitalist == self}
        partners = my_rounds.map {|instance| instance.startup}
        partners.uniq
    end

    def biggest_investment
        my_rounds = FundingRound.all.select {|instance| instance.venture_capitalist == self}
        my_rounds.max_by {|instance| instance.investment}
    end

    # def invested(domain)
    # end

    def self.all
        @@all
    end

    def self.tres_commas_club
        @@all.select do |instance|
            instance.total_worth > 1000000000
        end
    end

end
