class Testbb < ActiveRecord::Base
  attr_accessible :message, :name
    
    validates :name, :presence => true
    validates :message, :presence => true
end
