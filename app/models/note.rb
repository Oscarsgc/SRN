class Note < ActiveRecord::Base
  belongs_to :calification
  belongs_to :user
  attr_accessible :grade
end
