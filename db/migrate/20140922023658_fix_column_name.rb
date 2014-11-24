class FixColumnName < ActiveRecord::Migration
  def change
      rename_column :docker_images, :parent_id_id, :parent_id
  end
end
