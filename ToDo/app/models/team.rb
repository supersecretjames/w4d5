class Team < ActiveRecord::Base
	attr_accessible :name, :user_ids

	has_many :projects
	has_many :memberships
	has_many :users, :through => :memberships
end