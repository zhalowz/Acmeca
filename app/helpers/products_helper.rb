module ProductsHelper
  def product_description_html
    return if @product.description.nil?
    @product.description_html = RedCloth.new(@product.description).to_html
  end
end
