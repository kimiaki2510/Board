FactoryBot.define do
  factory :tom, class: User do
    name             { 'Tom' }
    email            { 't_tom@tom.com' }
    password         { "tom1234" }
    password_digest  { "tom1234" }
    #image            { "" }
    introduce        { "" }
  end

  factory :taro, class: User do
    name              { 'taro1'*10 }         #５0文字
    email            { 'taro1@taro.com' }
    password         { 'taro1234' }
    password_digest  { 'taro1234' }
    introduce        { 'I am Taro1'*20 }    #200文字
  end
end
