class AddReferenceGroupIdToEntities < ActiveRecord::Migration[7.0]
  def change
    remove_column :entities, :group_id
    add_reference :entities, :group, null: false, foreign_key: true
  end
end
