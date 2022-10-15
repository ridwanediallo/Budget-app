class Group < ApplicationRecord
  belongs_to :user, :optional => true
  has_many :entities
  mount_uploader :icon, IconUploader
  validates :name, presence: true
end
