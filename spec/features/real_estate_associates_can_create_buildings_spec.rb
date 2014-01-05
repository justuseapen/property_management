require 'spec_helper'

feature 'associate creates building listing', %Q{
As a real estate associate
I want to record a building
So that I can refer back to pertinent information
} do

# *I must specify a street address, city, state, and postal code
# *Only US states can be specified
# *I can optionally specify a description of the building
# *If I enter all of the required information in the required format, the building is recorded.
# *If I do not specify all of the required information in the required formats, the building is not recorded and I am presented with errors
# *Upon successfully creating a building, I am redirected so that I can record another building.

	scenario 'associate enters valid building information' do
		visit root_path
		click_link 'New Building'
		fill_in "Street address", with: '713 Cedar Lane' 
		fill_in	'City', with: 'Bel Air'
		select 'Maryland', from: 'State'
		fill_in 'Zip Code', with: '21015'
		fill_in 'Description(Optional)', with: 'Beautiful 12-acre farm only minutes from the Festival'
		click_button 'Create Building'

		expect(page).to have_content('Building was successfully added.')
		expect(page).to have_content('713 Cedar Lane')
	end

	scenario 'associate enters invalid information' do
		visit root_path
		click_link 'New Building'
		click_button 'Create Building'

		expect(page).to have_content "can't be blank"
	end
end

