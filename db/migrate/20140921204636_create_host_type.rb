class CreateHostType < ActiveRecord::Migration
  def change
    create_table :host_types do |t|
      t.string :name
      t.text :description
    end
  end
end
