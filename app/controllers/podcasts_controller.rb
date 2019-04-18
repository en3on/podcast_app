class PodcastsController < ApplicationController
  def index
    @podcasts = Podcast.all
  end

  def show
    @podcast = Podcast.find(params[:id])
  end

  def create
    @podcast = Podcast.new(podcast_params)

    @podcast.save ? (redirect_to @podcast) : (render 'new')
  end

  def new
    @podcast = Podcast.new
  end

  def update

  end

  def edit

  end

  def delete
    @podcast = Podcast.find(params[:id])

    Podcast.delete(@podcast)
  end
  
  private
  def podcast_params
    params.permit(:name, :genre, :image)
  end
end
