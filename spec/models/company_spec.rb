require 'rails_helper'

RSpec.describe Company, type: :model do
  it { should have_many(:employments) }
  it { should have_many(:employees).through(:employments) }

  it "is valid" do
    expect(Company.count).to eq(0)
  end

  it "response to method #name" do
    company = Company.create name: 'Company A'
    expect(company.name).to eq('Company A')
  end
end
