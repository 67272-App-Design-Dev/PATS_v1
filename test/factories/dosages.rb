FactoryBot.define do
  factory :dosage do
    association :visit
    association :medicine
    units_given { 50 }
    discount { 0.00 }
  end
end
