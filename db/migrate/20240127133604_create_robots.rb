class CreateRobots < ActiveRecord::Migration[7.1]
  def change
    create_table :robots do |t|
      t.string :name
      t.string :description
      t.string :category
      t.float :price

      t.timestamps
    end
  end
end
