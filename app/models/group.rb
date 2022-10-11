class Group < ApplicationRecord
  belongs_to :user, :optional => true
  has_many :entities , through: :group_entities
end
