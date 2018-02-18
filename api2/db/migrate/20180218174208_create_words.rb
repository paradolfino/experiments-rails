class CreateWords < ActiveRecord::Migration[5.1]
  def change
    create_table :words do |t|
      t.string :eng_si
      t.string :eng_pl
      t.string :nor
      t.timestamps
    end
  end
end
