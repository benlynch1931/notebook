require "notebook"

describe NoteBook do
  let(:note) { double 'note' }
  let(:subject) { NoteBook.new(note) }

  context '#initialize' do


    it { is_expected.to be_a NoteBook}

    it 'creates note_list on initialization' do
      expect(subject.note_list).to be_empty
    end

  end

  context '#create_note' do
    before do
      allow(note).to receive(:create_note).and_return("Here's my note!")
    end

    it "creates a new note" do
      expect(subject.create_note).to eq ["Here's my note!"]
    end

  end


end
