class Item < ActiveRecord::Base
	attr_accessible :title, :description, :status, :project_id

	belongs_to :project
end