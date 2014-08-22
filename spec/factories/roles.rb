FactoryGirl.define do
  factory :role do
    name :user
  end
  factory :admin_role do
    name :administrator
  end
  factory :super_admin_role do
    name :super_administrator
  end
end
