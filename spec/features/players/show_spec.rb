require "rails_helper"

describe "Player Show Page", :vcr do
	describe "player information" do
		before do
			visit player_path("JYYRPLR")
		end

		it "has player attributes" do
			expect(page).to have_content("MonkeyMike")
			expect(page).to have_content("Level: 132")
			expect(page).to have_content("Town Hall Level: 10")
			expect(page).to have_content("Builder Hall Level: 6")
			expect(page).to have_content("War Preference: in")
			expect(page).to have_content("Clan Tag: #2LYJJ0GJL")
			expect(page).to have_content("Heroes:")
			expect(page).to have_content("Barbarian King")
			expect(page).to have_content("Level: 28")
			expect(page).to have_content("Max Level: 85")
			expect(page).to have_content("Village: home")
			expect(page).to have_content("Archer Queen")
			expect(page).to have_content("Level: 33")
			expect(page).to have_content("Max Level: 85")
			expect(page).to have_content("Village: home")
		end
	end
end