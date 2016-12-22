class Item < ApplicationRecord
  belongs_to :user

  def days_left
  	7 - (DateTime.now.to_date - self.created_at.to_date).to_i
  end

end
