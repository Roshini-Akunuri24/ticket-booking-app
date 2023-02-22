class MovieTicket < ApplicationRecord
    # has_many :tickets
    mount_uploader :image, ImageUploader
    # belongs_to :user
    belongs_to :location, optional: true
    belongs_to :show, optional: true
    belongs_to :theatre, optional: true
end