require 'spec_helper'

describe AddressCard do
  context 'display_name' do
    let(:address_card) { FactoryGirl.build(:address_card, first_name: 'Test', last_name: 'Testing') }

    it 'show last name, first name' do
      address_card.display_name.should eq('Testing, Test')
    end
    it 'show last name, first name' do
      address_card.full_name.should eq('Test Testing')
    end
  end
end
