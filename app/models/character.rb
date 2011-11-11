class Character < ActiveRecord::Base
  belongs_to :movie
  
  # ascending order
  scope :all, order("characters.name")
end
