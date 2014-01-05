require 'spec_helper'

describe Owner do
  let(:blank_values) { [nil,''] }
  it { should have_valid(:f_name).when('Chelsea') }
  it { should_not have_valid(:f_name).when(*blank_values) }
  it { should have_valid(:l_name).when('Woodruff') }
  it { should_not have_valid(:l_name).when(*blank_values) }
  it { should have_valid(:email).when('shatteredchampagne@o.com') }
  it { should_not have_valid(:email).when('user@mycom',
    'usermy.com',
    'user',
    '.com',
    'my.com') }
  it { should have_valid(:company).when('Charlestown University') }

  it { should have_many(:buildings) }
end
