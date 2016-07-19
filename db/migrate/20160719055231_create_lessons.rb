class CreateLessons < ActiveRecord::Migration
  def change
  	drop_table :lessons
    create_table :lessons do |t|
      t.string :name


      t.timestamps null: false
    end
  end
end
