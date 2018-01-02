class CreateDictionaries < ActiveRecord::Migration[5.1]
  def change
    create_table :dictionaries do |t|
      t.string :engword
      t.string :norword
      t.string :norword_past
      t.string :norword_pres
      t.string :norword_sing
      t.string :norword_plur
      t.string :norword_sing_def
      t.string :norword_plur_def
      t.text :norword_usage
      t.timestamps
    end
  end
end
