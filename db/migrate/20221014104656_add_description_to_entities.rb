class AddDescriptionToEntities < ActiveRecord::Migration[7.0]
  def change
    add_column :entities, :description, :text
  end
end
