FactoryBot.define do
  factory :medicine do
    name { "Rabies" }
    description { "A potent medicine for vaccinating animals against rabies" }
    stock_amount { 10000 }
    admin_method { "injection" }
    unit { "milliliters" }
    vaccine { true }
    active { true }
  end
end
