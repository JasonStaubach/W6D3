class CreateCreateArtworkShares < ActiveRecord::Migration[7.0]
  def change
    create_table :create_artwork_shares do |t|

      t.timestamps
    end
  end
end
