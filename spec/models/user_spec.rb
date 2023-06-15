require 'rails_helper'

RSpec.describe User, type: :model do

  before do
    @user = User.new(
                    id: 1,
                    name: "ルフィ",
                    email: "rufy@yahoo.co.jp",
                    password: "gomugomu", 
                    )
  end


it '名前空白はダメ' do 
  @user.name = nil 
  expect(@user).to be_invalid
end
end
