class User < ActiveRecord::Base
	attr_accessible :name, :teams, :team_ids

	has_many :memberships
	has_many :teams, :through => :memberships
end
