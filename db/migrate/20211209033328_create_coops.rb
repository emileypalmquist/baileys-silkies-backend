class CreateCoops < ActiveRecord::Migration[6.1]
  def change
    create_table :coops do |t|
      t.string :name
      t.boolean :supplier, default: false
      t.text :description

      t.timestamps
    end
  end
end
