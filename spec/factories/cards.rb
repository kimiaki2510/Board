FactoryBot.define do
  factory :card do
    title { 'MyString' }
    deadline { 'MyString' }
    explanation { 'MyText' }
    user { nil }
    table { nil }
  end
end
