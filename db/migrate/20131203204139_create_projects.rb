class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
		t.column :title, :string
		t.column :description, :text
		t.column :picture_url, :string
		t.column :funding_goal_in_months, :integer
		t.column :end_date, :date 
		t.timestamps
    end
  end
end
