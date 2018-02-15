class CreateHeroes < ActiveRecord::Migration[4.2]
  def change
    create_table :heroes do |t|
      t.string  :name
      t.string  :power
      t.string  :bio
    end
  end
end
