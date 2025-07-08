FactoryBot.define do
  factory :procedure_cost do
    association :procedure
    cost { 2500 }
    start_date { Date.current }
    end_date { nil }
  end
end
