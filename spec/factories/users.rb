FactoryBot.define do
  factory :user do
    name { "マーフィー" }
    email { "mafy@yahoo.co.jp" }
    password {"mafy1234"}
    password_confirmation {"mafy1234"}
  end
end
