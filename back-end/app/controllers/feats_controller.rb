class FeatsController < ApplicationController
  def index
  	hero = Hero.find(params[:hero_id])
 	render json: hero.feats
  end

  def create
  end
end
