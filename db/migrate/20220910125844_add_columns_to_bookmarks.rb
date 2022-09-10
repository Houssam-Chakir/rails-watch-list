class AddColumnsToBookmarks < ActiveRecord::Migration[7.0]
  def change
    add_column :bookmarks, :comment, :text
    add_reference :bookmarks, :movie, index: true
    add_reference :bookmarks, :list, index: true
  end
end
