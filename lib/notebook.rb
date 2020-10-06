class NoteBook
  attr_reader :note_list, :note_tag

  def initialize
    @note_list = []
  end

  def create_note
    puts "Enter your note: "
    @note_input = gets.chomp
    puts "Enter the tag for the note: "
    @note_tag = gets.chomp
    @note_list.push(@note_input)
  end
end
