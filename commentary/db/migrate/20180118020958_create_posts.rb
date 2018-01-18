class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.user_id :integer
      t.categor_id :integer
      t.timestamps
    end
  end
end
