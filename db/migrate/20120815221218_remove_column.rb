class RemoveColumn < ActiveRecord::Migration
  def up
    remove_column :choices, :user_id
  end

  def down
    add_column :choices, :user_id, :integer
  end
end
