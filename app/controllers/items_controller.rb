class ItemsController < ApplicationController
  def index
    @list_of_items = Item.all

    render({ :template => "item_templates/list" })
  end

  def form
    render({ :template => "item_templates/form" })
    # redirect_to({"/HTTP_303"}) NOT HERE, NO 303
  end
  def new
    i=Item.new
    i.link_url=params.fetch("url_link")
    i.link_description=params.fetch("url_description")
    i.thumbnail_url=params.fetch("thumbnail_url_link")
    i.save
    redirect_to("/")
  end
  def delete
      matching_items=Item.where({:id=>params.fetch("id")})
      the_item=matching_items.at(0)
      the_item.destroy
      redirect_to("/")
  end

end
