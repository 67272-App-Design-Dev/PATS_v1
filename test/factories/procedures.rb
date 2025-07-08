FactoryBot.define do
  factory :procedure do
    name { "Check-up" }
    description { "A complete check-up of pet." }
    length_of_time { 15 }
    active { true }
  end
end
