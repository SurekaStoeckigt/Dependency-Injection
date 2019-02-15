require 'ex4'

describe SayHelloToMyLittleFriend do

  describe "#run" do
    it 'sends the message in an email' do
      message_double = double :message
      email_double = double :email, message: message_double
      email_client_class_double = double :email_client_class, new: email_double
      expect(message_double).to receive(:send) do |email_ad, message|
        message
      end
      sayHelloToMyLittleFriend = SayHelloToMyLittleFriend.new(email_client_class_double)
      expect(sayHelloToMyLittleFriend.run).to eq("HELLO!")
    end
  end

end
