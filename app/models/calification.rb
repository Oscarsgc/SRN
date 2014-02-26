class Calification < ActiveRecord::Base
	has_many :notes
	attr_accessible :name, :ponderation
	 validates :name, presence: true, length: { minimum: 5 }
	 validates :ponderation, presence: true
end
