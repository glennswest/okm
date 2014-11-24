require 'pp'
pp require 'docker'

cimages =  Docker::Image.all()
cimages.each{|image|
          pp image
          pp image.info
          }


