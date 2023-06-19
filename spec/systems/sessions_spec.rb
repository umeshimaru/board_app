require 'rails_helper'


RSpec.describe "Sessions", type: :system do
describe 'ログイン関連' do 
  let(:user) { FactoryBot.create(:user) }

it 'ログイン後ヘッダーにログアウトが表示されている' do
 visit login_path
 fill_in "Email", with: user.email
 fill_in "Password", with: user.password
 click_button "Log in"
 
 expect(page).to_not have_link "Log in" , href: login_path
 expect(page).to have_link "Log out" , href: logout_path
 expect(page).to have_link "Profile", href: user_path(user)

  

end 
end 
  
end