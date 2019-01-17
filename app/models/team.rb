class Team
  attr_accessor :name, :motto

  def initialize(args)
    args.each do |key, value|
      self.send("#{key}=", value)
    end
  end
end
