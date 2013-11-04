require 'spec_helper'

describe Phone do
  context 'invalid on blank values' do
    it 'validation fails with nil value' do
      phone = FactoryGirl.build(:phone, :without_kind)
      expect(phone).to have(1).error_on(:kind)
    end
    it 'validation fails with nil value' do
      phone = FactoryGirl.build(:phone, :without_kind)
      expect(phone).to have(1).error_on(:kind)
    end
  end
end
