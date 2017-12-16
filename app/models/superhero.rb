class Superhero
  attr_accessor :name, :power, :bio, :team

  def self.create(name, power, bio, team)
    new_hero = self.new
    new_hero.name = name
    new_hero.power = power
    new_hero.bio = bio
    new_hero.team = team
  end

end
