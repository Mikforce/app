class CreateTamplates < ActiveRecord::Migration[7.0]
  def change
    create_table :tamplates do |t|
      t.text :name
      t.text :chernovik
      t.text :opisanie
      t.integer :templ_type
      t.integer :koef

      t.timestamps
    end
  end
end
