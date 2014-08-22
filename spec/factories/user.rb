FactoryGirl.define do
  factory :user do
    first_name  'John'
    last_name   'Doe'
    sequence(:email)      { |n| "person#{n}@example.com" }
    password              'pasword'
    password_confirmation "pasword"
    after(:build) {|user| user.send(:initialize_state_machines, dynamic: :force)}
  end

  factory :admin_user, parent: :user do
    after(:create) do |u|
      u.roles = [create(:admin_role)]
    end
  end

  factory :super_admin_user, parent: :user do
    #roles     {
    #  [Role.find_by_name(Role::SUPER_ADMIN)]
    #}
    after(:create) do |u|
      u.roles = [create(:super_admin_role)]
    end
  end
end
