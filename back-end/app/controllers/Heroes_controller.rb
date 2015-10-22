class HeroesController < ApplicationController
	skip_before_filter :verify_authenticity_token
	def index
		heroes = Hero.all
		render json: heroes
	end
	def create
		hero = Hero.create(name: params[:hero][:name], description: params[:classroom][:description])
		render json: hero
	end
end