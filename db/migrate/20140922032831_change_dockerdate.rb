class ChangeDockerdate < ActiveRecord::Migration
  def change
      change_column :docker_images, :created, :datetime
  end
end
