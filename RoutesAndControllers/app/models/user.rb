class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true

    has_many :artworks,
        foreign_key: :artist_id,
        class_name: :User,
        dependent: :destroy

    has_many :artwork_shares,
        foreign_key: :viewer_id,
        class_name: :ArtworkShare,
        dependent: :destroy

    has_many :shared_artowrks,
        through: :artwork_shares,
        source: :artwork
    
end
