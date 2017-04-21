class User < ApplicationRecord
  validates_presence_of :name,:age
  validates_numericality_of :age,
  	:message => "must be a number"
  #has_many :users2book
end
