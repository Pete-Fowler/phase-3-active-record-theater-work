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

  def locations
    arr = []
    self.auditions.each do |a| 
      arr << a.location
    end
    arr
  end

  def lead 
    lead = self.auditions.where(hired == true).first
    if lead == nil
      'no actor has been hired for this role'
    else
      lead
    end 
  end

  def understudy
    under = self.auditions.where(hired == true).second
    if under == nil
      'no actor has been hired for understudy for this role'
    else
      under
    end 
  end

end
