class AddCoordinatesToRobots < ActiveRecord::Migration[7.1]
  def change
    add_column :robots, :address, :string
    add_column :robots, :latitude, :float
    add_column :robots, :longitude, :float
  end
end
