require 'spec_helper'

describe Building do
	let(:blank_values) { [nil,''] }
  it { should have_valid(:street_address).when('141 West Heather Road') }
  it { should_not have_valid(:street_address).when(*blank_values) }
  it { should have_valid(:city).when('Bel Air') }
  it { should_not have_valid(:city).when(*blank_values) }
  it { should have_valid(:state).when('Maryland') }
  it { should_not have_valid(:state).when(*blank_values) }
  it { should have_valid(:zip_code).when('21014') }
  it { should_not have_valid(:zip_code).when(*blank_values) }

  it { should belong_to(:owner) }
end
