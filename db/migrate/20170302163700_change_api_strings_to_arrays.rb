class ChangeApiStringsToArrays < ActiveRecord::Migration[5.0]
  def change
    remove_column :cryptograms, :definition, :string
    add_column :cryptograms, :definition, :string, array: true
  end
end
