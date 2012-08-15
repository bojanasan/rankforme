class AddUserIdToFactors < ActiveRecord::Migration
  def change
    add_column :factors, :user_id, :integer
  end
end
