class HomeController < ApplicationController
  def index
    @movies = Movie.all
  end

  def characters_in_movie
    @characters = Character.where(:movie_id => params[:movie_id])
    
    respond_to do |format|
      format.html {render :partial => 'characters', :locals => {:characters => @characters}}
    end
  end
end
