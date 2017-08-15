class User < ApplicationRecord
  has_many :tracks, dependent: :destroy
  validates_presence_of :email
end
