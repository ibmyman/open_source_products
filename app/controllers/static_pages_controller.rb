class StaticPagesController < Spree::HomeController
  def home
    @searcher = build_searcher(params.merge(include_images: :true))
    @products = @searcher.retrieve_products
    @taxonomies = Spree::Taxonomy.includes(root: :children)
  end

  def about
  end

  def contact
  end

  def advocacy
  end
end
