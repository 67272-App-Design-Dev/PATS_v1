FactoryBot.define do
  factory :medicine_cost do
    association :medicine
    cost_per_unit { 25 }
    start_date { Date.current }
    end_date { nil }
  end
end
