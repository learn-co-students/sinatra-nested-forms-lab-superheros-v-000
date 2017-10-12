class ChangeHeroesToSuperheroes < ActiveRecord::Migration[5.1]
  def change
    rename_table :heroes, :superheroes
  end
end
