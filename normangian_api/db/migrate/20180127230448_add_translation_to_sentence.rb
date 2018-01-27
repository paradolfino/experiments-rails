class AddTranslationToSentence < ActiveRecord::Migration[5.1]
  def change
    add_column :sentences, :translation, :string
  end
end
