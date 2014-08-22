FactoryGirl.define do
  factory :shipping_method do
    name          "34567kjhgf"
    shipping_zone { create(:shipping_zone) }
  end
end
