class Startup

    attr_reader :name, :founder, :domain
    
    @@all = []

    def initialize(name, founder, domain)
        @name = name
        @founder = founder
        @domain = domain

        @@all << self
    end
    
    def pivot(domain, name)
        @domain = domain
        @name = name
    end

    def sign_contract(venture_capitalist, type, investment)
        FundingRound.new(self, venture_capitalist, type, investment)
    end

    def funding_rounds
        our_rounds = FundingRound.all.select {|instance| instance.startup == self}
        our_rounds.count
    end

    def total_funds
        our_rounds = FundingRound.all.select {|instance| instance.startup == self}
        amounts = our_rounds.map {|instance| instance.investment}
        amounts.sum
    end

    def investors
        our_rounds = FundingRound.all.select {|instance| instance.startup == self}
        investors = our_rounds.map {|instance| instance.venture_capitalist}
        investors.uniq
    end

    # def big_investors
    #     our_rounds = FundingRound.all.select {|instance| instance.startup == self}
    #     investors = our_rounds.map {|instance| instance.venture_capitalist}
    #     tcc_investors = investors.map {|instance| instance.tres_commas_club}
    #     tcc_investors
    # end

    def self.all
        @@all
    end

    def self.find_by_founder(founders_name)
        @@all.find {|instance| instance.founder == founders_name}
    end

    def self.domains
        @@all.select {|instance| instance.domain}
    end

end
