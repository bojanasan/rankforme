class CreateFactors < ActiveRecord::Migration
  def change
    create_table :factors do |t|
      t.string :description
      t.integer :value
      t.integer :factorable_id
      t.string :factorable_type

      t.timestamps
    end
  end
end
