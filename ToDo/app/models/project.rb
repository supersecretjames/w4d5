class Project < ActiveRecord::Base
	attr_accessible :title, :description, :team_id

	has_many :items
	has_many :titles, :through => :items
	belongs_to :team
end