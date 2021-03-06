class CreateOutcomes < ActiveRecord::Migration
  def change
    create_table :outcomes do |t|
    	t.references :user, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true
      t.references :lesson, index: true, foreign_key: true
      t.references :word, index: true, foreign_key: true
      t.references :activity, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
