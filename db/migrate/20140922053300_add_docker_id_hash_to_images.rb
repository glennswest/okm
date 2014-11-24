class AddDockerIdHashToImages < ActiveRecord::Migration
  def change
    add_column :docker_images, :dockeridhash, :string
    add_column :docker_images, :dockerparentidhash, :string
  end
end
