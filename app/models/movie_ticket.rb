class MovieTicket < ApplicationRecord
    # has_many :tickets
    mount_uploader :image, ImageUploader
    # belongs_to :user
    belongs_to :location
    belongs_to :show
    belongs_to :theatre
end