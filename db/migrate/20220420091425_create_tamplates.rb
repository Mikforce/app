class CreateTamplates < ActiveRecord::Migration[7.0]
  def change
    create_table :tamplates do |t|
      t.text :name
      t.text :chernovik
      t.text :opisanie
      t.int :type
      t.int :koef

      t.timestamps
    end
  end
end
