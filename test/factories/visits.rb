FactoryBot.define do
  factory :visit do
    association :pet
    date { 6.months.ago.to_date }
    weight { 5.0 }
    overnight_stay { false }
    total_charge { 5000 }
  end
end
