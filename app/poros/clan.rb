class Clan
	attr_reader

	def initialize(data)
		@tag = data[:tag]
		@name = data[:name]
		@type = data[:type]
		@description = data[:description]
		@badge_id = data[:badgeId]
		@clan_score = data[:clanScore]
		@clan_war_trophies = data[:clanWarTrophies]
		@required_trophies = data[:requiredTrophies]
		@donations_per_week = data[:donationsPerWeek]
		@clan_level = data[:clanLevel]
		@location = data[:location]
		@members = data[:members]
	end
end