class NoteBook
  attr_reader :note_list

  def initialize(note)
    @note_list = []
    @note = note
  end

  def create_note
    @note_list.push(@note.create_note)
  end
end
