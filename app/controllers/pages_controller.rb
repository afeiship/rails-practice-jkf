class PagesController < ApplicationController
  def index
    @news = Admin::News.all
  end

  def about
  end

  def news
    @news = Admin::News.all
  end

  def works
  end

  def contact
  end
end
