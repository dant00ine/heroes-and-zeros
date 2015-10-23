class HeroesController < ApplicationController
	skip_before_filter :verify_authenticity_token
	def index
		heroes = Hero.all
		render json: heroes
	end
	def create
		hero = Hero.create(name: params[:hero][:name], description: params[:hero][:description])
		render json: hero
	end
	def delete
		hero = Hero.find(params[:id]).destroy
		render json: hero
	end
	def show
		hero = Hero.find(params[:id])
		render json: hero
	end
	def update
		hero = Hero.find(params[:id]).update(name: params[:hero][:name], description: params[:hero][:description])
		render json: hero
	end
end