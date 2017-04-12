class Users2book < ApplicationRecord
  belongs_to :User
  has_many :bookitem
end
