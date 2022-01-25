require 'rails_helper'
require './app/models/note'

describe Note do
  context '#new' do
    it 'should create a note' do
      note = Note.new(title: 'Note Title', description: 'Note description')
      expect(note.title).to eq('Note Title')
    end
  end

  context '#create' do
    it 'should create a note' do
      note = Note.create(title: 'Note Title', description: 'Note description')
      expect(note.title).to eq('Note Title')
    end
  end

  context '#update' do
    it 'should update a note' do
      note = Note.create(title: 'Note Title', description: 'Note description')
      note.update(title: 'Note', description: 'Note description')
      expect(note.title).to eq('Note')
    end
  end

  context '#delete' do
    it 'should delete a note' do
      note = Note.create(title: 'Note Title', description: 'Note description')
      note.destroy
      expect(Note.find_by(id: note.id)).to be_nil
             
    end
  end

end
