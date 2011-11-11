class Movie < ActiveRecord::Base
  has_many :characters
  
  scope :all, order("movies.name")
end
