class AddColumnWeaponsToNinja < ActiveRecord::Migration
  def change
    add_column :ninjas, :weapons, :string, default: ['Sai', 'Nunchuka']
  end
end
