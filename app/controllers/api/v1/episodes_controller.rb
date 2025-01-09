class Api::V1::EpisodesController < ApplicationController
  def index
    episodes = Episode.all
    render json: episodes, status: 200
  end

  def show
    episode = Episode.find_by(id: params[:id])
    if episode
      render json: episode, status: 200
    else
      render json: { error: "Episode Not Found." }
    end
  end

  def episode_params
    params.require(:episode).permit([
      :bonus,
      :duration,
      :number,
      :summary,
      :title
    ])
  end
end
