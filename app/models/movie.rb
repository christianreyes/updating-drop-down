class Movie < ActiveRecord::Base
  has_many :characters
end
