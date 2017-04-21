class Bookitem < ApplicationRecord
  validates_presence_of :title, :author
  validates_uniqueness_of :title
  validates_numericality_of :pages,
    :message => "Should be numeric value."
  #belongs_to :users2book
end
