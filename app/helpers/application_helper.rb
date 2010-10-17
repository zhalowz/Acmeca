module ApplicationHelper
  def page_type(type)
    type.empty? ? "page3" : type
  end
end
