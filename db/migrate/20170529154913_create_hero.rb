class CreateHero < ActiveRecord::Migration
  def change
    create_table :heros do |t|
      t.string :name
      t.string :power
      t.string :bio
      t.integer :team_id
    end
  end
end
