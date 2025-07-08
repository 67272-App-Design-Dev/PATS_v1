FactoryBot.define do
  factory :animal_medicine do
    association :animal     # don't have to put the word association in front, but I think it helps...
    association :medicine
    recommended_num_of_units { 100 }
  end
end
