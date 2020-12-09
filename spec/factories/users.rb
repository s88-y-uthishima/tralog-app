FactoryBot.define do
  factory :user do
    nickname              {"test"}
    email                 {"test@example"}
    password              {"a00000"}
    password_confirmation {password}
  end
end