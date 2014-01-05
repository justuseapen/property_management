require 'spec_helper'

feature 'associates can store owner info', %Q{
As a real estate associate
I want to record a building owner
So that I can keep track of our relationships with owners
} do
	# Acceptance Criteria:
	# *I must specify a first name, last name, and email address
	# *I can optionally specify a company name
	# *If I do not specify the required information, I am presented with errors
	# *If I specify the required information, the owner is recorded and I am redirected to enter another new owner

	scenario 'associate enters valid owner information' do
		visit root_path
		click_link 'Add Owner'
		fill_in 'First Name', with: 'Sara'
		fill_in 'Last Name', with: 'Hanson'
		fill_in 'Email', with: 'danishgirl@varkalabeach.in'
		fill_in 'Company', with: 'Danske Bank'
		click_button 'Create Owner'

		expect(page).to have_content "Owner successfully added"
	end
	scenario 'associate enters invalid owner information' do
		visit root_path
		click_link 'Add Owner'
		click_button 'Create Owner'

		expect(page).to have_content "can't be blank"
	end
end