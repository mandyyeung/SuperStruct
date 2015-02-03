class UpdatePcos < ActiveRecord::Migration
  def change
    add_column :pcos, :billed, :boolean
    add_column :pcos, :billed_month, :string
    rename_column :pcos, :type, :pco_type
  end
end
