require "rails_helper"

describe "ClashService", :vcr do
	describe "calling api" do
		it "returns a player" do
			clash_service = ClashService.new
			player = clash_service.player("JYYRPLR")

			expect(player).to be_a(Hash)
			expect(player[:name]).to be_a(String)
			expect(player[:name]).to eq("MonkeyMike")
			expect(player[:tag]).to be_a(String)
			expect(player[:tag]).to eq("#JYYRPLR")
		end
	end
end