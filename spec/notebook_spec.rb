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


    it 'stores note to notes array' do
      subject.create_note
      expect(subject.note_list).to eq ["This is my first note!"]
    end

    it 'adds a tag to note' do
      subject.create_note
      expect(subject.note_tag).to eq("Tuesday")
    end
  end
end
