require 'spec_helper'

feature 'associates can link owners with their buildings', %Q{
	As a real estate associate
	I want to correlate an owner with buildings
	So that I can refer back to pertinent information
} do

	# *Acceptance Criteria:
	# *When recording a building, I want to optionally associate the building with its rightful owner.
	# *If I delete an owner, the owner and its primary key should no longer be associated with any properties.

	scenario 'associate creates building with owner' do
		owner = FactoryGirl.create(:owner)
		visit root_path
		click_link 'Add Building'
		fill_in 'Address', with: '713 Cedar Lane' 
		fill_in	'City', with: 'Bel Air'
		select 'MD', from: 'State'
		fill_in 'Zip Code', with: '21015'
		fill_in 'Description', with: 'Beautiful 12-acre farm only minutes from the Festival'
		select owner.email, from: 'Owner'
		click_button 'Add Building'

		expect(page).to have_content('Building successfully added')
		expect(page).to have_content('713 Cedar Lane')
	end
end
