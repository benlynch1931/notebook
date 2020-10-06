require "notebook"

describe NoteBook do

  it "initializes an empty array of notes" do
    expect(subject.note_list).to eq []
  end
end
