# a = nil

# if !a.nil?
#   puts "はい "
# else 
#   puts "いいえ"
# end


# ①論理否定
# ②selfの省略


# attr_accessor :remember_token, :activation_token

# def create_activation_digest
#   self.activation_token  = User.new_token
#   self.activation_digest = User.digest(activation_token)
# end
# ↑なんでselfがいるか

# 今回のselfが省略できない理由は、インスタンス変数への代入とローカル変数の初期化を区別するためであり、selfを省略するとローカル変数として扱われ、期待したインスタンス変数への代入が行われなくなるためです。
# class Naruto

# attr_accessor :name

# def initialize(name)
#    @name = name
# end

# def say_name
# self.name = "サスケ"
# end 

  
# end

# h = Naruto.new
# puts h.say_name

# class Naruto
#   attr_accessor :name

#   def initialize(name)
#     name = name
#   end


#   def say_name
#    self.name = "サスケ"# puts self.name と同じ
#   end


# end

# n = Naruto.new("ナルト")
# # user.name = 'yamada'

# puts n.say_name # 'yamada' と表示する







# class Onepiece
#   attr_accessor :name

#   def initialize
#     @name 
#   end


#   def say_name
#     #  name = "海賊王"
#      self.dream 
#   end

 
# end

# o = Onepiece.new

# o.dream = "海賊王"
#  o.say_name

# class Onepiece
#   attr_accessor :name 

# def initialize(name)
#   @name = name 
# end 

#   def say_name
#    self.name   # puts self.name と同じ
#   end
# end

# o = Onepiece.new("ルフィ")
# o.name = "ゾロ"
# puts o.name
# # 'yamada' と表示する


