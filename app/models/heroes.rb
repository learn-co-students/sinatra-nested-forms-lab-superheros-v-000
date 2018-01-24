class Hero
  attr_accessor :name, :power, :bio, :team

  def self.create(team_object, info_hash)
    Hero.new.tap do |hero|
      info_hash.each do |key, value|
        hero.send("#{key}=",value)
      end
      hero.team = team_object
    end
  end

end
