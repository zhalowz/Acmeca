module AlbumsHelper

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

  def get_first_image(album, size)
    photo = album.photos.first
    unless photo.nil?
      tag :img, { :src => photo.data.url(size) }
    end
  end
end
