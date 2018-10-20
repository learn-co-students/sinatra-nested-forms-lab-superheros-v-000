class Superhero
   @@superheroes =[]
   attr_reader :name, :power, :bio
   def initialize(params)
    @name = params[:name]
    @power = params[:power]
    @bio = params[:bio]
    @@superheroes << self
  end
   def self.all
    @@superheroes
  end
 end
