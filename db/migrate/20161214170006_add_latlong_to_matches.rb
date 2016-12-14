class AddLatlongToMatches < ActiveRecord::Migration
  def change
    add_column :matches, :latitude, :float
    add_column :matches, :longitude, :float
  end
end
