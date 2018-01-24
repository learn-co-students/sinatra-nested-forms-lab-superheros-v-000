
class Members
  attr_accessor :name, :power, :bio

  MEMBERS = []

  def initialize(args)
    @name = args[:name]
    @power = args[:power]
    @bio = args[:bio]
    MEMBERS << self
  end

  def self.all
    MEMBERS
  end


end

# # class SuperHero
# class Members
#
#   attr_accessor :name, :power, :bio
#     MEMBERS = []
#
#     def initialize(name, power, bio)
#       @name = name
#       @power = power
#       @bio = bio
#       # @team_id = params[team_id]
#       MEMBERS << self
#     end
#
#     # def initialize(args)
#     #   @name = args[:name]
#     #   @power = args[:power]
#     #   @bio = args[:bio]
#     #   # @team_id = params[team_id]
#     #   SUPERHEROES << self
#     # end
#
#     def self.all
#       MEMBERS
#     end
#
#     # def self.clear
#     #   SUPERHEROES =[]
#     # end
#
# end
