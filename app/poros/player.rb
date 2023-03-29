class Player
	attr_reader :tag, 
							:name, 
							:town_hall_level, 
							:level, 
							:builder_hall_level, 
							:war_preference, 
							:clan_tag, 
							:heroes

	def initialize(data)
		@tag = data[:tag]
		@name = data[:name]
		@town_hall_level = data[:townHallLevel]
		@level = data[:expLevel]
		@builder_hall_level = data[:builderHallLevel]
		@war_preference = data[:warPreference]
		@clan_tag = data[:clan][:tag]
		@heroes = add_heroes(data[:heroes])
	end

	def add_heroes(hero_data)
		hero_data.map do |hero|
			Hero.new(hero)
		end
	end
end