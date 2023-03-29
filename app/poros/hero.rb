class Hero
	attr_reader :name,
							:level,
							:max_level,
							:village

	def initialize(data)
		@name = data[:name]
		@level = data[:level]
		@max_level = data[:maxLevel]
		@village = data[:village]
	end
end