require 'rails_helper'

RSpec.describe User, type: :model do

it'#名、メール、パスワードがあれば有効な状態であること' do 
user = User.new(
                name: "ルフィ",
                email: "rufy@yahoo.co.jp",
                password: "gomugomu", 
)
expect(user).to be_valid
end 
end
