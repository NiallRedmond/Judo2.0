class AddAddressToMatches < ActiveRecord::Migration
  def change
    add_column :matches, :address, :text
  end
end
