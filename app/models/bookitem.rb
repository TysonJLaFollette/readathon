class Bookitem < ApplicationRecord
  validates_presence_of :title, :author
  validates_uniqueness_of :title
  validates_numericality_of :pages,
    :message => "Should be numeric value."

  #need to check for white space characters at the end of a statement

end
