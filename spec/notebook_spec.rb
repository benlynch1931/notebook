require "notebook"

describe NoteBook do

  it "initializes an empty array of notes" do
    expect(subject.note_list).to eq []
  end

  describe '#create_note' do

    before do
      allow(subject).to receive(:gets).and_return("This is my first note!")
    end

    it 'responds when called' do

      expect(subject).to respond_to(:create_note)
    end

    it 'creates a note' do
      expect { subject.create_note }.to output("Enter your note: \nThis is my first note!\n").to_stdout
    end
  end
end
