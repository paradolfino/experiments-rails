class CreatePhrases < ActiveRecord::Migration[5.1]
  def change
    create_table :phrases do |t|
      t.text :english
      t.text :normansk
      t.timestamps
    end
  end
end
