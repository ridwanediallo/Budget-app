class Group < ApplicationRecord
  belongs_to :user, :optional => true
  has_many :entities
  mount_uploader :icon, IconUploader

end
