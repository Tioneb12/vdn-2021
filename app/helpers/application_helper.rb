module ApplicationHelper

  def robots(index, follow)
    if index == true && follow == false
      'index, nofollow'
    elsif index == false && follow == true
      'noindex, follow'
    else
      "none"
    end
  end

end
