class EpisodesController < ApplicationController
  def create
    @podcast = Podcast.find(params[:id])
    @episode = @podcast.episodes.create(episode_params)

    redirect_to @podcast

  end

  private
  def episode_params
    params.permit(:title, :show_notes, :mp3_file, :rating)
  end
end
