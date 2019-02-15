require 'ex4'

describe SayHelloToMyLittleFriend do

  describe "#run" do
    it 'sends the message in an email' do
      email_double = double :email
      email_client_class_double = double :email, new: email_double
      sayHelloToMyLittleFriend = SayHelloToMyLittleFriend.new(email_client_class_double)
      allow(email_double).to receive(:message)
      allow(email_double).to receive(:send).with("friend@example.com","HELLO!")
      expect(sayHelloToMyLittleFriend).to receive(:run).twice
      sayHelloToMyLittleFriend.run
      expect(sayHelloToMyLittleFriend.run).to eq nil
    end
  end

end
