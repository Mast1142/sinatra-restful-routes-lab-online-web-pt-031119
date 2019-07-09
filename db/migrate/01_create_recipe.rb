class CreateRecipes < ActiveRecord::Migration[5.1]
  def up
    create_table :Recipes do |t|
      t.string :name
      t.string :ingrdients
      t.string :cook_time
    end
  end

  def down
     drop_table :users
  end
end
