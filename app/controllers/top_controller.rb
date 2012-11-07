# coding: utf-8
class TopController < ApplicationController
  def index
    @articles = Article.order('published_at desc')
  end

  def about; end
end
