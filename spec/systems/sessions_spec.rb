require 'rails_helper'

RSpec.describe "Sessions", type: :system do

let(:user) { FactoryBot.create(:user,) }
let(:other_user) { FactoryBot.create(:other_user) }

describe 'ログイン関連' do 

it 'ログイン後ヘッダーにログアウトが表示されている' do
 visit login_path
 fill_in "Email", with: user.email
 fill_in "Password", with: user.password
 click_button "Log in"
 click_on "Account"


 expect(page).to_not have_link "Log in" , href: login_path
 expect(page).to have_link "Log out" , href: logout_path
 expect(page).to have_link "Profile", href: user_path(user)
end 
end 

describe '正しいユーザーしかプロフィール編集できない'
  it '正しいユーザーですか？' do
    log_in(user)

  end
  

end 
