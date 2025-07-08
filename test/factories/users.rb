FactoryBot.define do
  factory :user do
    first_name { "Ed" }
    last_name { "Gruberman" }
    role { 2 }
    username { "gruberman" }
    password { "secret" }
    password_confirmation { "secret" }
    active { true }
  end
end
