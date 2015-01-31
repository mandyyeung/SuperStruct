class CreatePcos < ActiveRecord::Migration
  def change
    create_table :pcos do |t|
      t.decimal :num
      t.string :type
      t.string :description
      t.text :discovery
      t.integer :sub_proposal_num
      t.decimal :al_num
      t.decimal :ddc_co_num
      t.decimal :sub_co_num
      t.date :proposal_received
      t.date :df_submitted
      t.date :df_returned
      t.date :sent_to_gt
      t.date :cleared_gt
      t.date :sent_to_ddc
      t.date :ddc_approved
      t.string :eao
      t.date :approved
      t.decimal :approximate
      t.decimal :proposed
      t.decimal :tstv_estimate
      t.decimal :gt_estimate
      t.decimal :submitted
      t.decimal :ddc_approved
      t.string :bc_to
      t.decimal :deduct
      t.string :bc_from
      t.decimal :add
      t.boolean :used_allowance
      t.string :tdrive
      t.belongs_to :subcontractor
      t.belongs_to :status

      t.timestamps null: false
    end
  end
end
