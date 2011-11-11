class Character < ActiveRecord::Base
  belongs_to :movie
  
  scope :all, order("characters.name")
end
