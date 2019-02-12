require 'Note'

describe Note do
  describe "#display" do
    it 'displays a formatted note' do
      note = Note.new("test", "body of test")
      note_formatter_double = double :NoteFormatter, format: "Title: #{note.title}\n#{note.body}"
      new_note = Note.new("test", "body of test", note_formatter_double)
      expect(new_note.display).to eq "Title: #{new_note.title}\n#{new_note.body}"
    end
  end
end
