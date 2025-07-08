FactoryBot.define do
  factory :pet do
    name { "Dusty" }
    female { true }
    active { true }
    date_of_birth { 10.years.ago }
    association :owner   # don't have to put the word association in front, but I think it helps...
    association :animal
  end
end
