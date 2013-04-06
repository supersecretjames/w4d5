class CreateMemberships < ActiveRecord::Migration
  def change
  	create_table :memberships do |t|
  		t.references :team
  		t.references :user
  		t.timestamps
  	end
  end
end
