class CreateSealions < ActiveRecord::Migration
  def change
    create_table :sealions do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :location
      t.string :quirk
    end
  end
end
