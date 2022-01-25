class AddCollectionIdToNotes < ActiveRecord::Migration[6.1]
  def change
    add_column :notes, :collection_id, :string
  end
end
