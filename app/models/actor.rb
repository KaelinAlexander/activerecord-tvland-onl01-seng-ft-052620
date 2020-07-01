class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    full = "#{self.first_name} #{self.last_name}"
    full
  end

  def list_roles
    roles = []
      self.characters.each do |character|
        roles << "#{self.character.name} - #{self.character.show}"
    roles
  end

end
