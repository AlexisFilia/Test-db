class CreateFields < ActiveRecord::Migration[6.1]
  def change
    create_table :fields do |t|
      t.string :name
      t.string :value
      t.string :type_value
      t.references :entity, null: false, foreign_key: true

      t.timestamps
    end
  end
end
