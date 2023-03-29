require "rails_helper"

describe "Player Index Page", :vcr do
	describe "form to search for players" do
		before do
			visit players_path
		end

		it "has a form to search for players" do
			expect(page).to have_field(:player_tag)
			expect(page).to have_button("Search")
			expect(page).to have_content("Enter player tag to search for a player.")
		end

		it "can search for a player" do
			fill_in :player_tag, with: "JYYRPLR"
			click_button "Search"

			expect(current_path).to eq(player_path("JYYRPLR"))
		end
	end
end