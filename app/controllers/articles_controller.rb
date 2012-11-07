# coding: utf-8
class ArticlesController < ApplicationController
  def index page
    @articles = Article.order('published_at desc').page page
  end

  def new
    @article = Article.new
  end

  def create article
    @article = Article.new article

    if @article.save
      redirect_to articles_path, notice: 'New article was successfully created!'
    else
      render 'new'
    end
  end
end
