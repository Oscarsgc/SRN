class Note < ActiveRecord::Base
  belongs_to :calification 
  attr_accessible :grade
end
