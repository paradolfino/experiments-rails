class CreateWords < ActiveRecord::Migration[5.1]
  def change
    create_table :words do |t|
      t.string :english
      t.string :single
      t.string :plural
      t.string :definite
      t.string :definite_plural

      t.timestamps
    end
  end
end
