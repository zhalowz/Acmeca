module ProductsHelper
  def description_html
    return if @product.description.nil?
    @product.description_html = sanitize(RedCloth.new(@product.description).to_html)
  end
end
