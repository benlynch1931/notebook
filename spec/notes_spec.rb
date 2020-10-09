require 'notes'

describe Notes do
  before do
    allow(subject).to receive(:gets).and_return("Here's My Note!", "First Note")
  end

  context '#create_note' do

    it 'returns hash with note info' do
      hash = {id: 1, tag: "First Note", text: "Here's My Note!"}
      expect(subject.create_note(1)).to eq(hash)
    end
  end
end
