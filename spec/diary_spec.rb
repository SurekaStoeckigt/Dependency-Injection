require 'diary'


describe Diary do
  let(:title_input) {"title"}
  let(:body_input) {"body"}

  describe "#add(title,body)" do
    it 'adds an entry to the diary' do
      entry_double = double :entry
      entry_class_double = double :entry_class, new: entry_double
      diary = Diary.new(entry_class_double)
      # allow(entry_double).to receive(:title).and_return(title_input)
      # allow(entry_double).to receive(:body).and_return(body_input)
      diary.add(title_input, body_input)
      expect(diary.entries).to include entry_double
    end
  end

  describe "#index" do
    it 'displays the titles of a single entry' do
      entry_double = double :entry
      # allow(entry_double).to receive(:title).and_return("title")

      expect(entry_double).to receive(:title).and_return("title")
      entry_class_double = double :entry_class, new: entry_double


      diary = Diary.new(entry_class_double)
      # allow(entry_double).to receive(:title).and_return(title_input)
      # allow(entry_double).to receive(:body).and_return(body_input)
      # diary.add(title_input, body_input)

      diary.add('a','b')

      expect(diary.index).to eq "title"
    end
  end


end



# describe CarFactory do
#   describe "#make_a_car" do
#     it "makes a car" do
#       car_double = double :car
#       car_class_double = double :car_class, new: car_double
#
#       car_factory = CarFactory.new(car_class_double)
#
#       expect(car_double).to receive(:drive_away)
#       car_factory.make_a_car
#     end
#   end
# end
