# class EmailClient
#   def message
#     Message.new
#   end
# end
#
# class Message
#   def send(to, body)
#
#   end
# end

class SayHelloToMyLittleFriend
attr_reader :message_class

  def initialize(email_client_class = EmailClient)
    @email_client_class = email_client_class
    # @message_class = message_class
  end

  def run
    email_client = @email_client_class.new
    email_client.message.send(
    "friend@example.com",
    "HELLO!"
  )
end
end
# sayHelloToMyLittleFriend = SayHelloToMyLittleFriend.new
# email_client = EmailClient.new
# puts sayHelloToMyLittleFriend.run
