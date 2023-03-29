class ClashService

	def player(player_id)
		get_url("/v1/players/%23#{player_id}")
	end

	def get_url(url)
		response = connection.get(url)
		JSON.parse(response.body, symbolize_names: true)
	end

	def connection
		Faraday.new(url: "https://api.clashofclans.com") do |f|
			f.headers["Authorization"] = ENV["CLASH_API_KEY"]
		end
	end
end