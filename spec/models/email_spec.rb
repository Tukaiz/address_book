require 'spec_helper'

describe Email do
  context 'invalid on blank values' do
    it 'validation fails with nil value' do
      email = FactoryGirl.build(:email, :without_kind)
      expect(email).to have(1).error_on(:kind)
    end
    it 'validation fails with nil value' do
      email = FactoryGirl.build(:email, :without_kind)
      expect(email).to have(1).error_on(:kind)
    end
  end
  it 'validation fails without corrent email address for value' do
    email = FactoryGirl.build(:email, :with_bad_value)
    expect(email).to have(1).error_on(:value)
  end
end
