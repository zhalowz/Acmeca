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
   def add_object_link(name, form, object, partial, where)
    html = render(:partial => partial, :locals => { :form => form }, :object => object)
    link_to_function name, %{
      var new_object_id = new Date().getTime();
      var html = #{js html}.gsub("index_to_replace_with_js", new_object_id);
      $('#{where}').insert( { 'bottom' : html } );
    }
  end
 
  def js(data)
    if data.respond_to? :to_json
      data.to_json
    else
      data.inspect.to_json
    end
  end  
end
