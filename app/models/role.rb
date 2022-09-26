class Role < ActiveRecord::Base
  has_many :auditions

  def auditions
    self.auditions
  end 

  def actors
    arr = []
    self.auditions.actors.each do |actor|
      arr << actor
    end
    arr
  end



end
