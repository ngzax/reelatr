class Contact < ApplicationRecord
  def previous
    self.class.where("id < #{self.id}").order("id desc").first
  end

  def next
    self.class.where("id > #{self.id}").order("id asc").first
  end
end
