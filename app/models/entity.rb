class Entity < ApplicationRecord
  belongs_to :user, :optional => true
  has_many :groups, through: :group_entities
end
