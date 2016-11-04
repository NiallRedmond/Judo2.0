class CreateJudoClasses < ActiveRecord::Migration
  def change
    create_table :judo_classes do |t|
      t.string :belt_level
      t.string :class_name
      t.string :day
      t.time :time
      t.string :teacher_name

      t.timestamps
    end
  end
end
