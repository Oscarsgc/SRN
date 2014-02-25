class Calification < ActiveRecord::Base
	attr_accessible :name, :ponderation
	 validates :name, presence: true, length: { minimum: 5 }
	 validates :ponderation, presence: true
end
