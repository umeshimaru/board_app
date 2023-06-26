class User
attr_accessor :name

  def initialize(name)
    @name = name
  end



 

end 

user = User.new('らん')
puts user.name
user.name = "毛利蘭"
puts user.name


# puts user.name
# user.name = "名探偵コナン"
# puts user.name

