class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :client_type
      t.string :identification_type
      t.string :identification_number

      t.timestamps
    end
  end
end
