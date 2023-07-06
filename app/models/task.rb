class Task < ApplicationRecord

  def laundry?
    if title.downcase == "laundry" || title.include?("laundry") == true
      return true
    elsif description.downcase == "laundry" || title.include?("laundry") == true
      return true
    else
      return false
    end
  end

end