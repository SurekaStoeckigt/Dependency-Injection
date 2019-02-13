require 'Note'

describe Note do
  describe "#display" do
    it 'displays a formatted note' do
      note_formatter_double = double :NoteFormatter, format: "Title: test\nbody of test"
      new_note = Note.new("test", "body of test", note_formatter_double)
      expect(new_note.display).to eq "Title: test\nbody of test"
    end
  end
end
