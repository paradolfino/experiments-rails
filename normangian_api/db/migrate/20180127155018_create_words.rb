class CreateWords < ActiveRecord::Migration[5.1]
  def change
    create_table :words do |t|
      t.string :single
      t.string :plural
      t.string :definite

      t.timestamps
    end
  end
end
