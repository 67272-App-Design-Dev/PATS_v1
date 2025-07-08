FactoryBot.define do
  factory :treatment do
    association :visit
    association :procedure
    successful { true }
    discount { 0.00 }
  end
end
