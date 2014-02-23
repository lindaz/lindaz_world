class Article < ActiveRecord::Base
	attr_accessible :title, :content, :active

	# Relationships
	has_many :categories

	# Validations
	validates_presence_of :title, :content

	# Scopes
	scope :alphabetical, order('title')
	scope :active, where('active = ?', true)
end
