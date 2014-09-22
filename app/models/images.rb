class Image 
  include AciveModel::Model
  attr_accessor :parent, :repotags, :size, :iddocker, :created

  def initialized(attributes={})
      super 
      @omg ||= true;
      end
end

