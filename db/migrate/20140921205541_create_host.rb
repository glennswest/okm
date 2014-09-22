class CreateHost < ActiveRecord::Migration
  def change
    create_table :hosts do |t|
      t.string :name
      t.references :HostType, index: true
      t.text :description
      t.string :IpAddress
      t.string :Status
      t.boolean :Enable
      t.integer :Containers
      t.string :OkmIp
    end
  end
end
