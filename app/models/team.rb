class Team
    attr_accessor :name, :motto
    @@all = []

   def initialize(params)
     @name = params[:name]
     @motto = params[:motto]
     @@all << self

     params[:members].each do |member|
       SuperHero.new(member)
     end
    end

   def self.all
     @@all
   end
 end
