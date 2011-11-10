class AddDefaultCharacters < ActiveRecord::Migration
  def up
    dk = Movie.where(:name => "The Dark Knight").first
    al = Movie.where(:name => "Avatar: The Last Airbender").first
    lk = Movie.where(:name => "The Lion King").first
    
    Character.new(:name => "Batman", :movie => dk).save!
    Character.new(:name => "Joker", :movie => dk).save!
    Character.new(:name => "Commissioner Gordon", :movie => dk).save!
    Character.new(:name => "Alfred", :movie => dk).save!
    
    Character.new(:name => "Aang", :movie => al).save!
    Character.new(:name => "Sokka", :movie => al).save!
    Character.new(:name => "Katara", :movie => al).save!
    Character.new(:name => "Toph", :movie => al).save!
    Character.new(:name => "Zuko", :movie => al).save!
    
    Character.new(:name => "Simba", :movie => lk).save!
    Character.new(:name => "Timon", :movie => lk).save!
    Character.new(:name => "Pumbaa", :movie => lk).save!
    Character.new(:name => "Mufasa", :movie => lk).save!
    Character.new(:name => "Scar", :movie => lk).save!
  end

  def down
  end
end
