class CreateUsersTable < ActiveRecord::Migration[5.1]
  def change
    create_table :users_tables do |t|
      t.string :username
      t.string :email
      t.timestamps
    end
  end
end
