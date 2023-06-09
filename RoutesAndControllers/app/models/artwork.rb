class Artwork < ApplicationRecord
    validates :title, presence: true
    validates :image_url, presence: true
    validates :artist_id, presence: true, uniqueness: true
    validates :artist_id, uniqueness: {scope: :title, message: "This title is already used by this artist"}

    belongs_to :artist,
        foreign_key: :artist_id,
        class_name: :User

    has_many :artwork_shares,
        foreign_key: :artwork_id,
        class_name: :ArtworkShare,
        dependent: :destroy
    has_many :shared_viewers,
        through: :artwork_shares,
        source: :viewer
end
