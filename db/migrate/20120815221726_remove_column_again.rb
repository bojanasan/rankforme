class RemoveColumnAgain < ActiveRecord::Migration
  def up
       remove_column :factors, :user_id
     end

   def down
       add_column :factors, :user_id, :integer
     end
end
