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
    @note_list.push({tag: @note_tag, text: @note_input})
  end

  def search_by_category
    puts "Enter category to search by: "
    category = gets.chomp
    @note_list.each { |note|
      puts "#{note[:tag]}: #{note[:text]}" if note[:tag] == category
    }
  end

end
