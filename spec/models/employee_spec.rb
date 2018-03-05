require 'rails_helper'

RSpec.describe Employee, type: :model do
  let(:john) { Employee.create(name: 'John', location: 'Phnom Penh') }
  it "responds to method #name" do
    expect(john.name).to eq('John')
  end

  it "responds to method #location" do
    expect(john.location).to eq('Phnom Penh')
  end
end
