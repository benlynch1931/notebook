class NoteBook
  attr_reader :note_list

  def initialize(note)
    @note_list = []
    @note = note
    @note_id = 0
  end

  def create_note
    @note_id += 1
    @note_list.push(@note.create_note(@note_id))

  end

  def print_notes
    puts "Notes:"
    puts ""
    @note_list.each { |note|
      puts "#{note}\n"
    }
  end

  def search_by_category
    puts "Enter category to search by: "
    category = gets.chomp
    @note_list.each { |note|
      puts "#{note[:id]} > #{note[:tag]}:\n#{note[:text]}" if note[:tag] == category
    }
  end
end
