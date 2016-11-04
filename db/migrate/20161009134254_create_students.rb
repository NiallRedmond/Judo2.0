class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :student_name
      t.string :email
      t.date :dob
      t.string :belt
      t.boolean :gender
      t.string :photo
      t.integer :score
      t.integer :judo_class_id
      t.string :password_digest

      t.timestamps
    end
  end
end
