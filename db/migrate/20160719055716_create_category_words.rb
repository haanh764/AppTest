class CreateCategoryWords < ActiveRecord::Migration
  def change
    create_table :category_words do |t|
    	t.references :category, index: true, foreign_key: true
      t.references :word, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
