class NoteBook
  attr_reader :note_list

  def initialize
    @note_list = []
  end

  def create_note
    puts "Enter your note: "
    note_input = gets.chomp
    @note_list.push(note_input)
  end
end
