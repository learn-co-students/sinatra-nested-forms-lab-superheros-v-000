class Superhero

  @@superheroes = []

  attr_accessor :name, :power, :biography

  def initialize(args)
    args.each do |key, value|
      self.send("#{key}=", value)
    end
    @@superheroes << self
  end

  def self.all
    @@superheroes
  end



end
