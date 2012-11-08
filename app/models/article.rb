class Article < ActiveRecord::Base
  attr_accessor :publish
  attr_accessible :body, :published_at, :title, :publish

  paginates_per 10

  scope :published, where(published_at: { not: nil })

  before_save :set_published_at

  def set_published_at
    self.published_at = Time.now if publish == '1'
  end
end
