a = nil

if !a.nil?
  puts "はい "
else 
  puts "いいえ"
end


①論理否定
②selfの省略


attr_accessor :remember_token, :activation_token

def create_activation_digest
  self.activation_token  = User.new_token
  self.activation_digest = User.digest(activation_token)
end
↑なんでselfがいるか

今回のselfが省略できない理由は、インスタンス変数への代入とローカル変数の初期化を区別するためであり、selfを省略するとローカル変数として扱われ、期待したインスタンス変数への代入が行われなくなるためです。