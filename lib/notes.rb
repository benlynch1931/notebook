class Notes

  def create_note(id)
    puts "Enter your note: "
    @note_input = gets.chomp
    puts "Enter the tag for the note: "
    @note_tag = gets.chomp
    {id: id, tag: @note_tag, text: @note_input}
  end
end
