class Tipchange < ActiveRecord::Migration[5.0]
  def change

           change_column :doctors, :doctor_type, :string


  end
end
