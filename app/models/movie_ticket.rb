class MovieTicket < ApplicationRecord
    mount_uploader :image, ImageUploader
    # belongs_to :user
    # belongs_to :location
    paginates_per 4
end