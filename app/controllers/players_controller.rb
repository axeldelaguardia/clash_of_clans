class PlayersController < ApplicationController
	def index
		if params[:player_tag]
			redirect_to player_path(params[:player_tag])
		end
	end

	def show
		@player = ClashFacade.new.get_player(params[:id])
	end

	def search

	end
end
