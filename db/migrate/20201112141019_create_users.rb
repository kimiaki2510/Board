class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :uid
      t.string :image
      t.text :introduce

      t.timestamps
    end
  end
end
