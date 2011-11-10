class AddDefaultMovies < ActiveRecord::Migration
  def up
    #add some movies into the database
    Movie.new(:name => "The Dark Knight").save!
    Movie.new(:name => "Avatar: The Last Airbender").save!
    Movie.new(:name => "The Lion King").save!
  end

  def down
  end
end
