class CreateSatisfactions < ActiveRecord::Migration[8.0]
  def change
    create_table :satisfactions do |t|
      t.string :level

      t.timestamps
    end
  end
end
