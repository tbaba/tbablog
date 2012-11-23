class Article < ActiveRecord::Base
  attr_accessible :body, :published_at, :title, :status

  paginates_per 10

  acts_as_taggable

  scope :published, where(status: 1)

  before_save :set_published_at

  def set_published_at
    self.published_at = Time.now if self.published_at.nil? && self.status == 1
  end
end
