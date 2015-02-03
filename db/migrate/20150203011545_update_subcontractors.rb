class UpdateSubcontractors < ActiveRecord::Migration
  def change
    add_column :subcontractors, :email, :string
  end
end
