class CreateReviews < ActiveRecord::Migration[8.0]
  def change
    create_table :reviews do |t|
      t.references :product, null: false, foreign_key: true
      t.references :satisfaction, null: false, foreign_key: true
      t.references :importance, null: false, foreign_key: true
      t.text :comments

      t.timestamps
    end
  end
end
