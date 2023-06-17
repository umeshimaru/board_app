require 'rails_helper'

RSpec.describe "Users signup", type: :system do


it '有効な情報を送信して、ユーザーが作成されたこと' do 
  visit signup_path
  fill_in 'Name' ,with: 'ベラミー'
  fill_in "Email", with: "user@example.com"
  fill_in "Password", with: "password"
  fill_in "Confirmation", with: "password"

  expect{ 
    click_button "Create my account"}
  .to change(User,:count).by(1)
end 

end