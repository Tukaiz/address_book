require 'spec_helper'

describe Address do
  context 'invalid address' do
    let(:address) { FactoryGirl.build_stubbed(:address) }
    it 'raises an error when no line_1' do
      expect(address.errors_on(:line_1)).to include("can't be blank")
    end
    it 'raises an error when no city' do
      expect(address.errors_on(:city)).to include("can't be blank")
    end
    it 'raises an error when no province' do
      expect(address.errors_on(:province)).to include("can't be blank")
    end
    it 'raises an error when no postal_code' do
      expect(address.errors_on(:postal_code)).to include("can't be blank")
    end
    it 'raises an error when no country' do
      expect(address.errors_on(:country)).to include("can't be blank")
    end
  end
  context 'valid address' do
   let(:address) { FactoryGirl.build_stubbed(:valid_address) }
    it 'should return as a valid address' do
      expect(address).to be_valid
    end
  end
end

