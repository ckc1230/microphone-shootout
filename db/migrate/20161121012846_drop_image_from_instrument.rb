class DropImageFromInstrument < ActiveRecord::Migration[5.0]
  def change
  	remove_column :instruments, :image
  end
end
