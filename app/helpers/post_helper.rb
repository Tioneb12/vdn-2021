module PostHelper
  def link_if_website(pseudo, url)
    url.present? ? link_to(pseudo, url, rel: 'nofollow') : pseudo
  end
end