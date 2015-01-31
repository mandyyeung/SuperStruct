class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.string :filter
      t.string :description

      t.timestamps null: false
    end
  end
end
