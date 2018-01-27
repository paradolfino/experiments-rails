class CreateSentences < ActiveRecord::Migration[5.1]
  def change
    create_table :sentences do |t|
      t.text :entry
      t.references :word, foreign_key: true
      t.timestamps
    end
  end
end
