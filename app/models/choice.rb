class Choice < ActiveRecord::Base
  attr_accessible :description, :problem_id, :user_id
  has_many :factors, :as => :factorable
  belongs_to :problem
  belongs_to :user

end
