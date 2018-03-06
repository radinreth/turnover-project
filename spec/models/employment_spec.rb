require 'rails_helper'

RSpec.describe Employment, type: :model do
  it { should belong_to(:company) }
  it { should belong_to(:employee) }
end
