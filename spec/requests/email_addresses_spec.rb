require 'rails_helper'

RSpec.describe "EmailAddresses", :type => :request do

  let(:email_address) do
    EmailAddress.new(address:'yourmom123@aol.com', person_id: 7)
  end

  it 'is valid' do
    expect(email_address).to be_valid
  end

  it 'is invalid without an address' do
    email_address.address = nil
    expect(email_address).not_to be_valid
  end

  it 'is invalid without a person id' do
    email_address.person_id = nil
    expect(email_address).not_to be_valid
  end

end
