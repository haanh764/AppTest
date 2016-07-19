class CreateLessonUsers < ActiveRecord::Migration
  def change
    create_table :lesson_users do |t|
    	t.references :user, index: true, foreign_key: true
      t.references :lesson, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
