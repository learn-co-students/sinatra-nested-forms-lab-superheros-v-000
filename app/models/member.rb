class Member
    attr_accessor :name, :power, :biography

    MEMBERS = []

    def initialize(params)

        @name = params[:name]
        @power = params[:power]
        @biography = params[:bio]
        MEMBERS << self
    end

    def self.all
        MEMBERS
    end
end