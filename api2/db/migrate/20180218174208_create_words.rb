class CreateWords < ActiveRecord::Migration[5.1]
  def change
    create_table :words do |t|
      t.string :eng_si
      t.string :eng_pl
      t.string :nor_si
      t.string :nor_pl
      t.string :nor_def
      t.string :nor_defpl
      
      t.timestamps
    end
  end
end
