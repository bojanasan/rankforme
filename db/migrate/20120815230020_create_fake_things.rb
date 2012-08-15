class CreateFakeThings < ActiveRecord::Migration
  def change
    create_table :fake_things do |t|

      t.timestamps
    end
  end
end
