module ApplicationHelper
  def page_type(type)
    type.empty? ? "page3" : type
  end
  def get_class_name(object)
    object.class.name.downcase
  end
  def redcloth(object)
    return if object.nil?
    RedCloth.new(object).to_html
  end
end
