FactoryBot.define do
  factory :admin do
    sequence(:username) { |n| "Username#{n}" }
    password { 'secret' }
  end
end
