class AddAdminToNurses < ActiveRecord::Migration[6.0]
  def change
    add_column :nurses, :admin, :boolean , default: false
  end
end
