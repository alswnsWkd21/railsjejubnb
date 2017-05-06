class AddPhotosToHouses < ActiveRecord::Migration[5.0]
  def change
    add_column :houses, :photos, :json
  end
end
