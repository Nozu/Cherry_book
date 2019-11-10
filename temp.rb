class Product
  attr_reader :code, :name

  def initialize(code, name)
    @code = code
    @name = name
  end

  def ==(other)
    if other.is_a?(Product)
      code == other.code
    else
      false
    end
  end
end

a = Product.new('A-0001', 'A great movie')
b = Product.new('B-0001', 'An awsome film')
c = Product.new('A-0001', 'A great movie')

p a==b
p a==c

class User
  def initialize(name)
    @name = name
  end

  def hello
    "Hello, #{@name}"
  end
end

user = User.new('Alice')
p user.hello

class User
  def hello
    "#{@name}さん、こんにちは!"
  end
end

p user.hello
