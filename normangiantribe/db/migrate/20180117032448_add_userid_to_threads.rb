class AddUseridToThreads < ActiveRecord::Migration[5.1]
  def change
    add_column :threads, :user_id, :integer
  end
end
