module ApplicationHelper
  def navlink(link, link_name)
    is_active_page = request.path_info.to_s =~ %r(^#{link}.*)
    content_tag :a, href: link, class: is_active_page ? 'active-page' : '' do
      link_name
    end
  end
end
