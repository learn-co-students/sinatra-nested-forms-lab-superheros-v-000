class Superhero
  attr_accessor :name, :power, :bio

  def initialize(args)
    args.each do |key, value|
      self.send("#{key}=", value)
    end
  end
end
