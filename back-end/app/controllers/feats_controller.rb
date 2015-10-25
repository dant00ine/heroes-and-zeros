class FeatsController < ApplicationController
skip_before_filter :verify_authenticity_token
  def index
  	hero = Hero.find(params[:id])
  	p hero.feats
 	render json: hero.feats
  end

  def create
  	hero = Hero.find(params[:id])
  	feat = Feat.create(hero:Hero.find(params[:id]), deed:params[:deed])
  	render json: feat
  end
end
