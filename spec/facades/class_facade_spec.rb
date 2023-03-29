require "rails_helper"

describe "ClashFacade" do
	describe "create player object", :vcr do
		it "creates a player and has attributes" do
			facade = ClashFacade.new
			player = facade.get_player("JYYRPLR")

			expect(player.tag).to eq("#JYYRPLR")
			expect(player.name).to eq("MonkeyMike")
			expect(player.town_hall_level).to eq(10)
			expect(player.level).to eq(132)
			expect(player.builder_hall_level).to eq(6)
			expect(player.war_preference).to eq("in")
			expect(player.clan_tag).to eq("#2LYJJ0GJL")
			expect(player.heroes).to be_an(Array)
			expect(player.heroes.first).to be_a(Hero)
			expect(player.heroes.first.name).to eq("Barbarian King")

			expect(player.heroes.first.level).to eq(28)
			expect(player.heroes.first.max_level).to eq(85)
			expect(player.heroes.first.village).to eq("home")
		end
	end
end