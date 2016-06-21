

class Store

  def initialize
    index_users
    inventary

  end

  def inventary
    CSV.foreach("Products.csv") do |product|
     @list << Producto.new(product[0],product[1])
    end
  end

  def index_users
    CSV.foreach("User_Registrer.csv") do |usuario|
     @list << User.new(usuario[0],usuario[1],usuario[2])
    end
  end
  end

end

class User
  attr_accessor :such, :email, :password

  def initialize(such,email,password)
    @such = such
    @email = email
    @password = password
  end

end

class Administrator < User

end

class SalesMan < User
    
end

class Client < User
    
end

