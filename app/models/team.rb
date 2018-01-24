class Team
  attr_accessor :name, :motto, :heroes

  def initialize
    self.heroes = []
  end

  def self.create(info_hash)
    self.new.tap do |team|
      info_hash.each do |key, value|
        if key == "heroes"
          value.collect do |hero_hash|
            team.create_hero(hero_hash)
          end
        else
          team.send("#{key}=", value)
        end
      end
    end
  end

  def create_hero(hero_info)
    hero = Hero.create(self, hero_info)
    self.heroes << hero
  end

end

# <!--
# :team {name: "PowerPuff Girls", motto: "Girls with power", heroes: [{name: "Blossom", power: "Laser eyes", bio: "The youngest sister"}, {name: "Buttercup", power: "super strong", bio: "the smarmy one"}, {name: "Dafodil", power: "Invisibility", bio: "The happy one"}]}
#  -->
