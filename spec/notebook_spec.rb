require "notebook"

describe NoteBook do
  let(:note) { double :Notes }
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

  context '#print_notes' do
    before do
      allow(note).to receive(:create_note).and_return("Here's my note!")
    end

    it "prints notes" do
      message = "Notes:\n\nHere's my note!\n"
      subject.create_note
      expect { subject.print_notes }.to output(message).to_stdout
    end
  end

  context '#search_by_category' do
    before do
      allow(note).to receive(:create_note).and_return({id: 1, tag: "First Note", text: "Here's My Note!"})
      allow(subject).to receive(:gets).and_return("First Note")
    end

    it 'prints by category' do
      input_msg = "Enter category to search by: \n"
      message = "1 > First Note:\nHere's My Note!\n"
      subject.create_note
      expect { subject.search_by_category }.to output(input_msg + message).to_stdout
    end
  end

end
