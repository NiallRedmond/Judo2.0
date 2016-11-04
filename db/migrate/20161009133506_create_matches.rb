class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.string :match_name
      t.boolean :result
      t.integer :match_points
      t.integer :student_id
	  t.integer :opponent
	  
      t.timestamps
    end
  end
end
