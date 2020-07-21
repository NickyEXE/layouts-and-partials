class CreateSuperheros < ActiveRecord::Migration[6.0]
  def change
    create_table :superheros do |t|
      t.string :name
      t.string :alias
      t.string :power
      t.integer :power_level

      t.timestamps
    end
  end
end
