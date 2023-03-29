class ClashFacade
	def get_player(player_id)
		player_data = service.player(player_id)
		Player.new(player_data)
	end

	def service
		ClashService.new
	end
end