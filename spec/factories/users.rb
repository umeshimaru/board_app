FactoryBot.define do
  factory :user,class: User  do
    name { "マーフィー" }
    email { "mafy@yahoo.co.jp" }
    password {"mafy1234"}
    password_confirmation {"mafy1234"}
  end

  # factory :other_user ,class: "User"do
  #   name { "ナルト" }
  #   email { "naruto@yahoo.co.jp" }
  #   password {"naruto1234"}
  #   password_confirmation {"naruto1234"}
  # end
end
