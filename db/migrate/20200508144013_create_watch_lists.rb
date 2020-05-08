class CreateWatchLists < ActiveRecord::Migration[6.0]
  def change
    create_table :watch_lists do |t|
      t.string :list_item

      t.timestamps
    end
  end
end
