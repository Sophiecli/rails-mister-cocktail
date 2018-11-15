class RemoveMeasurementFromDoses < ActiveRecord::Migration[5.2]
  def change
    remove_column :doses, :measurement, :integer
  end
end
