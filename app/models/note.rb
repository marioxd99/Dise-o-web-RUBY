require './app/models/application_record'

class Note < ApplicationRecord
    belongs_to :user
    belongs_to :collection ,optional: true
    has_one_attached :image
end
