require 'rails_helper'

RSpec.describe User, type: :model do

  before do
    @user = User.new(
                    id: 1,
                    name: "ルフィ",
                    email: "rufy@yahoo.co.jp",
                    password: "gomugomu", 
                    password_confirmation: "gomugomu"
                    )
  end


  it '名前空白はダメ' do 
    @user.name = nil 
    expect(@user).to be_invalid
  end

  it '名前は５０文字以下であるべき' do 
    @user.name = "a" * 51 
    expect(@user).to be_invalid
  end


  it 'パスワード空白はダメ' do 
    @user.password = nil 
    expect(@user).to be_invalid
  end

  it 'パスワードは6未満はダメであるべき' do 
    @user.password = @user.password_confirmation = "a" * 5
    expect(@user).to be_invalid
  end

  it 'emailは長すぎないこと' do 
    @user.email = "a" * 246 + "@example.com"
    expect(@user).to be_invalid 
  end
  
  it "有効なメールアドレスの型を受け入れる" do
    valid_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org first.last@foo.jp alice+bob@baz.cn]
    valid_addresses.each do |valid_address|
      @user.email = valid_address
      expect(@user).to be_valid 
    end
  end
      



end
