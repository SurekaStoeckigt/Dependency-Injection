class EmailClient
  def message
    Message.new
  end
end

class Message
  def send(to, body)
    # Imagine I'm sending an email
  end
end

class SayHelloToMyLittleFriend
attr_reader :message_class

  def initialize(email_client_class = EmailClient)
    @email_client_class = email_client_class
    # @message_class = message_class
  end

  def run
    email = @email_client_class.new
    email.message.send(
      "friend@example.com",
      "HELLO!"
    )
  end
end
