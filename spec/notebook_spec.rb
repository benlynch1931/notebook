require "notebook"

describe NoteBook do

  it "initializes an empty array of notes" do
    expect(subject.note_list).to eq []
  end

  describe '#create_note' do

    it 'responds when called' do

      expect(subject).to respond_to(:create_note)
    end
  end
end
