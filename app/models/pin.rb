class Pin < ApplicationRecord
    has_many_attached :images
    validates :title, presence: true
    validates :caption, presence: true 

    #private
    #def image_type
    #    if images.attached? == false
    #       errors.add(:images, "can't be empty")
    #    end
    #end
end
