class CreateImportances < ActiveRecord::Migration[8.0]
  def change
    create_table :importances do |t|
      t.string :level

      t.timestamps
    end
  end
end
