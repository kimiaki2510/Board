FactoryBot.define do
  factory :table do
    title { 'MyString' }
    user { nil }
  end

  factory :iphone, class: Table do
    title { 'apple' }
  end
end
