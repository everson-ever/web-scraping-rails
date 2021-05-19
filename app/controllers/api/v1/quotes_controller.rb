class Api::V1::QuotesController < ApiController
  before_action :authenticate_user!
  
  def index
    page = params[:page] || 1
    tag_search = params[:tag]

    tag = Tag.find_by(tag: tag_search)

    if tag.present?
      quotes = Quote.where(:tags => tag_search)
    else
        quotes = Quote.quote_crawler(tag_search, page)
        Quote.create(quotes)
        Tag.create({ tag: tag_search }).save
    end
    
    return render json: { quotes: quotes }
  end
end