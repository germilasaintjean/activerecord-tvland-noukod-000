class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows

  def full_name
    self.actor(:fisrt_nam && :last_name).first
  end

  def list_roles
    actor = Actor.pluck(:characters)
  end
end
