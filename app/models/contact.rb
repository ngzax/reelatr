class Contact < ApplicationRecord

  belongs_to :user

  def previous
    self.class.where("id < #{self.id}").order("id desc").first
  end

  def next
    self.class.where("id > #{self.id}").order("id asc").first
  end

  def to_s
    "#{self.first_name} #{self.last_name}"
  end

end
