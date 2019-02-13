require 'NoteFormatter'

describe NoteFormatter do
  describe 'gets' do
    it 'formats the note' do
      note_double = double :Note, title: "To do list", body: "Code all day"
      noteformatter = NoteFormatter.new
      expect(noteformatter.format(note_double)).to eq "Title: To do list\nCode all day"
    end
  end
end
