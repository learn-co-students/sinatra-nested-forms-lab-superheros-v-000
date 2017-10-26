class Team

attr_accessor :name, :motto, :power
  @@new_members = []
  @@members = []
  def initialize(params)
    @name = params["team"]["name"]
    @motto = params["team"]["motto"]
    @@new_members = params["team"]["members"]
  end

  def self.all
    @@members
  end

  def self.objectify_heroes
    @@new_members.each do |hero|
      new_hero = SuperHero.new(hero)
      @@members << new_hero
    end
    @@members
  end

end
