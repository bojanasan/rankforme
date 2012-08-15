class Problem < ActiveRecord::Base
  attr_accessible :choice_id, :description, :user_id
  belongs_to :user
  has_many :choices
  has_many :factors, :as => :factorable
end
