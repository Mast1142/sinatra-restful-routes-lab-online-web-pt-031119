class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :Recipes do |t|
      t.string :name
      t.string :ingrdients
      t.string :cook_time
    end
  end
end
