class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.integer :judo_class_id
      t.integer :student_id

      t.timestamps
    end
  end
end
