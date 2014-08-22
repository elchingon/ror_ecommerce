FactoryGirl.define do
  factory :state do
    name "MyString"
    abbreviation "My"
    described_as "State"
    shipping_zone_id 1
    country { create(:country) }
  end
end
