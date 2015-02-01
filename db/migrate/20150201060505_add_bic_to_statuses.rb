class AddBicToStatuses < ActiveRecord::Migration
  def change
    add_column :statuses, :bic, :string
  end
end
