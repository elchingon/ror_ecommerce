FactoryGirl.define do
  factory :role do
    name :user
  end
  factory :admin_role, parent: :role do
    name :administrator
  end
  factory :super_admin_role, parent: :role do
    name :super_administrator
  end
end
