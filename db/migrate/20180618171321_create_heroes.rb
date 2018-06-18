class CreateHeroes < ActiveRecord::Migration
  def change
    create_table :heroes do |t|
      t.string :name 
      t.string :power
      t.string :bio
      t.integer :team_id
    end
  end
end
