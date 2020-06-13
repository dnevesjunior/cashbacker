require 'rails_helper'

RSpec.describe Offer, type: :model do
  it { should belong_to(:advertiser) }

  it { should validate_presence_of(:advertiser) }
  it { should validate_presence_of(:url) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:starts_at) }
  it { is_expected.to allow_value("http://www.test.com").for(:url) }
  it { is_expected.to_not allow_value("www.test.com").for(:url) }
  it { should validate_length_of(:description).is_at_most(500) }
end