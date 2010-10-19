class ApplicationController < ActionController::Base
  protect_from_forgery
def list
    # step 1: set the variables you'll need
    page = (params[:page] ||= 1).to_i
    items_per_page = 20
    offset = (page - 1) * items_per_page

    # step 2: do your custom find without doing any kind of limits or offsets
    #  i.e. get everything on every page, don't worry about pagination yet
    @items = Item.find_with_some_custom_method()

    # step 3: create a Paginator, the second argument has to be the number of ALL items on all pages
    @item_pages = Paginator.new(self, @items.length, items_per_page, page)

    # step 4: only make a subset of @items available to the view
    @items = @items[offset..(offset + items_per_page - 1)]
end

end
