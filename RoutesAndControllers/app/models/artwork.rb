class CreateArtwork < ApplicationRecord
    validates :title, presence: true
    validates :image_url, :presence: true
    validates :artist_id, :presence: true, uniqueness: true
    validates :artist_id, uniqueness: {scope: :title, message: "This title is already used by this artist"}

    belongs_to :artist,
        foreign_key: :artist_id,
        class_name: :User
end
