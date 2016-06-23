class AddAccountRefToProjects < ActiveRecord::Migration
  def change
  	add_reference :projects, :account, index: true, foreign_key: true	
  end
end
