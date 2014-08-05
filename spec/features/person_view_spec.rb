require 'spec_helper'
require 'capybara/rails'
require 'capybara/rspec'

describe 'the person view', type: :feature do

  let(:person) { Person.create(first_name: 'Schooby', last_name: 'The Dog') }

  before(:each) do
    person.phone_numbers.create(number: '555-1111')
    person.phone_numbers.create(number: '555-2222')
  end

  it 'shows the phone numbers' do
    pending
    person.phone_numbers.each do |phone|
      expect(page).to have_content(phone.number)
    end
  end

end
