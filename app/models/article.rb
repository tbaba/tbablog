class Article < ActiveRecord::Base
  attr_accessible :body, :published_at, :title

  paginates_per 10
end
