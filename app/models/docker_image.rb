require 'docker'
require 'pp'

class DockerImage < ActiveRecord::Base

def self.update_from_docker

 images = Docker::Image.all
 images.each{|dimage|
        image = DockerImage.find_by dockeridhash: dimage.info["id"]
        if image.nil?
           image = DockerImage.new()
           end
        image.parent_id =  dimage.info["ParentId"].to_i
        image.repotags =  dimage.info["RepoTags"].join(",")
        image.size = dimage.info["size"].to_i
        image.created = Time.at(dimage.info["Created"])
        image.dockeridhash = dimage.info["id"]
        image.dockerparentidhash = dimage.info["ParentId"]
        image.save
        }
     end
  DockerImage.delay(run_at: 5.minutes.from_now).update_from_docker();
  end
DockerImage.delay.update_from_docker()
