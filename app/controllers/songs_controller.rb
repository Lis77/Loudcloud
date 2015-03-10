class SongsController < ApplicationController

	before_action :lookup_task, except: [:index,:create]

  def index
    @songs = Song.recent
  end


  def create
  end

  def update
  end



  def song_params
    params.require(:task).permit(:name, :completed)
  end

  def lookup_task
    @song = Song.find(params[:id])
  end

end
