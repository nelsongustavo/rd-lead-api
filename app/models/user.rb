class User < ApplicationRecord
  has_many :tracks, -> { order "date DESC" }, dependent: :destroy
  validates_presence_of :email
  accepts_nested_attributes_for :tracks
end
