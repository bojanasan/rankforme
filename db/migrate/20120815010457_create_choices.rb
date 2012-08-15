class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.string :description
      t.integer :user_id
      t.integer :problem_id

      t.timestamps
    end
  end
end
