class Factor < ActiveRecord::Base
  attr_accessible :description, :factorable_id, :factorable_type, :value
  belongs_to :factorable, :polymorphic => true
  belongs_to :user
end
