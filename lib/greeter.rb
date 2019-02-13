class Greeter

  def greet(kernel=Kernel)
    puts "What is your name?"
    name = kernel.gets.chomp
    message = "Hello, #{name}"
    puts message
    return message
  end
end
