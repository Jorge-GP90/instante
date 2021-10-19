class IndexFavoritesOnPostId < ActiveRecord::Migration[5.2]
  def change
    add_index :favorites, :post_id
  end
end
