class CreateDogWalkers < ActiveRecord::Migration[5.2]
  def change
    create_table :dog_walkers do |t|
      t.string :name
      t.string :favorite_breed

      t.timestamps
    end
  end
end
