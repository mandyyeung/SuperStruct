class CreateSubcontractors < ActiveRecord::Migration
  def change
    create_table :subcontractors do |t|
      t.string :bp
      t.string :company
      t.string :contact
      t.string :address
      t.string :phone
      t.string :trade
      t.decimal :contract_value
      t.string :logo
      t.text :notes
      t.belongs_to :user, index: true

      t.timestamps null: false
    end
  end
end
