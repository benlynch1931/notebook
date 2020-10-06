require "notebook"

describe NoteBook do

  it "initializes an empty array of notes" do
    expect(subject.note_list).to eq []
  end

  describe '#create_note' do

    before do
      allow(subject).to receive(:gets).and_return("This is my first note!", "Tuesday")
    end

    it 'responds when called' do

      expect(subject).to respond_to(:create_note)
    end


    it 'stores note to notes array with tag' do
      subject.create_note
      expect(subject.note_list).to eq [{text: "This is my first note!", tag: "Tuesday"}]
    end

    it 'adds a tag to note' do
      subject.create_note
      expect(subject.note_tag).to eq("Tuesday")
    end

  end

  describe '#search_by_category' do

    before do
      allow(subject).to receive(:gets).and_return("This is my first note!", "Tuesday", "This is my second note!", "Tuesday", "This is my third note!", "Tuesday", "Tuesday")
    end

    it "prints all notes with same tag" do
      3.times { subject.create_note }
      message = "Enter category to search by: \nTuesday: This is my first note!\nTuesday: This is my second note!\nTuesday: This is my third note!\n"
      expect { subject.search_by_category }.to output(message).to_stdout
    end
  end

    describe '#search_by_category' do

      before do
        allow(subject).to receive(:gets).and_return("This is my first note!", "Tuesday", "This is my second note!", "Wednesday", "This is my third note!", "Thursday", "Tuesday")
      end

    it "prints all note with same tag when more than 1 tag in list" do
      3.times { subject.create_note }
      message = "Enter category to search by: \nTuesday: This is my first note!\n"
      expect { subject.search_by_category }.to output(message).to_stdout
    end

  end
end
