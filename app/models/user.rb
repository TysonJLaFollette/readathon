class User < ApplicationRecord
  validates_presence_of :name, :age
  validates_numericality_of :age,
    :message => "Age must be a number"
end
