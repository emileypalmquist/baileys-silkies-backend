class CreateAvailableChickens < ActiveRecord::Migration[6.1]
  def change
    create_table :available_chickens do |t|
      t.belongs_to :coop, null: false, foreign_key: true
      t.string :sex
      t.date :hatch_date
      t.string :color
      t.boolean :naked_neck
      t.string :feather_type
      t.boolean :available

      t.timestamps
    end
  end
end
