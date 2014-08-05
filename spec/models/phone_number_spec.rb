require 'rails_helper'

RSpec.describe PhoneNumber, :type => :model do

  let(:phone_number) { PhoneNumber.new(number: "1112223333", person_id: 6) }

  it 'is valid' do
    expect(phone_number).to be_valid
  end

  it 'is invalid without a phone number' do
    phone_number.number = nil
    expect(phone_number).to_not be_valid
  end

  it 'must have reference to a person' do
    phone_number.person_id = nil
    expect(phone_number).not_to be_valid
  end
end
