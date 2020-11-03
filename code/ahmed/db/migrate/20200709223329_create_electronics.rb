class CreateElectronics < ActiveRecord::Migration[6.0]
  def change
    create_table :electronics do |t|

      t.timestamps
    end
  end
end
