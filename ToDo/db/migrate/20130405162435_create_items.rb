class CreateItems < ActiveRecord::Migration
  def change
  	create_table :items do |t|
  		t.string :title
  		t.string :description
  		t.integer :status
  		t.references :project
  		t.timestamps
  	end
  end
end
