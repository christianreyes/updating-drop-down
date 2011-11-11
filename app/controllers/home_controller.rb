class HomeController < ApplicationController
  def index
    # get all the movies so the drop down can be populated
    @movies = Movie.all
  end

  def characters_in_movie
    # get all the characters in that movie
    @characters = Character.where(:movie_id => params[:movie_id])
    
    respond_to do |format|
      # only render the partial "_characters.html.erb". Send @characters as the variable "characters" to the partial
      format.html {render :partial => 'characters', :locals => {:characters => @characters}}
    end
  end
end
