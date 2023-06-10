class CreateArtworkShare < ApplicationRecord
    validates :artwork_id, uniqueness: {scope: :viewer_id, message: "this artwork viewer combo is not unique"}

    belongs_to: artwork,
        foreign_key: :artwork_id,
        class_name: :Artwork

    belongs_to: viewer,
        foreign_key: :artwork_id
        class_name: :User
end
