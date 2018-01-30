class AddTensesToWords < ActiveRecord::Migration[5.1]
  def change
    add_column :words, :present, :string
    add_column :words, :past, :string
    add_column :words, :future, :string
  end
end
