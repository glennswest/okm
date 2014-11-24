class CreateDockerImage < ActiveRecord::Migration
  def change
    create_table :docker_images do |t|
      t.references :parent_id, index: true
      t.text :repotags
      t.integer :size
      t.integer :created
    end
  end
end
