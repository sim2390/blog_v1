class RenameTypeToTip < ActiveRecord::Migration[5.0]
  def change

       rename_column :doctors, :type, :doctor_type


  end
end
