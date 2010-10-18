module ApplicationHelper
  def page_type(type)
    type.empty? ? "page3" : type
  end
  def get_class_name(object)
    object.class.name.downcase
  end
end
