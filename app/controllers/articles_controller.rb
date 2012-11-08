# coding: utf-8
class ArticlesController < ApplicationController
  def index page
    @articles = Article.order('published_at desc').page page
  end

  def show id
    @article = Article.find id
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

  def edit id
    @article = Article.find id
  end

  def update id, article
    @article = Article.find id

    if @article.update_attributes article
      redirect_to @article, notice: 'Article was successfully updated!'
    else
      render 'edit'
    end
  end
end
