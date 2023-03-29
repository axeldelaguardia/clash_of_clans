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
			f.headers["Authorization"] = "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiIsImtpZCI6IjI4YTMxOGY3LTAwMDAtYTFlYi03ZmExLTJjNzQzM2M2Y2NhNSJ9.eyJpc3MiOiJzdXBlcmNlbGwiLCJhdWQiOiJzdXBlcmNlbGw6Z2FtZWFwaSIsImp0aSI6IjY2Y2UwZjBhLTVhYWEtNGQzYy1iNDFmLTJkYzcyNWY5ZjUwMCIsImlhdCI6MTY4MDA1NzI1Nywic3ViIjoiZGV2ZWxvcGVyL2M1NzE2YmE4LTA2ZDItNmE3OS02NTA4LWU0NzQ4MTE3MmM3NiIsInNjb3BlcyI6WyJjbGFzaCJdLCJsaW1pdHMiOlt7InRpZXIiOiJkZXZlbG9wZXIvc2lsdmVyIiwidHlwZSI6InRocm90dGxpbmcifSx7ImNpZHJzIjpbIjk3LjExOC4xNTIuMTM5Il0sInR5cGUiOiJjbGllbnQifV19.dxUzg2Oosp0nNLvzD4HFOFFJwXmUiwNw8mRjYRRw6hLXvKqy_0Iod0vSb5Hcj0sGn9f6VGM1nhd6hqFnHFHGFw"
		end
	end
end