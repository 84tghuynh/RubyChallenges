class HelloWorld
  def initialize(name_1)
    @name_1 = name_1
  end

  def hello(name_2 = "World")
    "Hello, #{name_2}. My name is #{@name_1}!"
  end
end
