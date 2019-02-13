require 'greeter'

describe Greeter do

  describe "#greet" do
    let(:input) {"Sureka"}

     before do
       new_name = double("Kernel")
       allow(new_name).to receive(:puts)
       std_in = double("STDIN")
       allow(std_in).to receive(:gets).and_return(input)
     end

    # it 'asks for username' do
    #   greeter = Greeter.new
    #   new_name = double("Kernel")
    #   # greeter.greet(new_name)
    #   expect(new_name).to have_received(:puts).with("What is your name?").once
    # end
    it 'greets a person' do
        new_name = double("Kernel")
        # allow(new_name).to receive(:gets).and_return("Sureka")
        greeter = Greeter.new
        expect(greeter.greet).to eq "Hello, #{input}"
       # expect(greeter).to have_received(:puts).twice
     end
  end
end

#

# context "#first_question" do
#   let(:input) { "Yes\n" }
#
#   before do
#     allow(Kernel).to receive(:puts)
#     allow(STDIN).to receive(:gets).and_return(input)
#   end
#
#   it 'outputs a question'
#     first_question
#
#     expect(Kernel).to have_received(:puts).with(
#       'Do you know how to play? (yes or no)'
#     ).once
#   end
#
#   it 'asks for input' do
#     first_question
#
#     expect(STDIN).to have_received(:gets).once
#   end
#
#   it 'returns the sanitized input' do
#     expect(first_question).to eq 'yes'
#   end
# end
