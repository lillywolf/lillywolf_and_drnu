class SiteController < ApplicationController
  
  def index 
    
  end  
  
  def show_music
    @songs = Song.all
  end

  def show_shows
    @shows = Show.all
  end  
  
  def show_comingsoon
  end  
  
end
