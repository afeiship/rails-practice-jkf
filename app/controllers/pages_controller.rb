class PagesController < ApplicationController
  def index
    @news = Admin::News.all
  end

  def about
  end

  def news
    @news = Admin::News.all
  end

  def news_detail
    # render plain: params.inspect
    @news_detail = Admin::News.find(params[:id])
  end

  def works
  end

  def contact
  end
end
