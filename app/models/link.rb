class Link < ActiveRecord::Base
  attr_accessible :title, :url
  self.per_page = 10

  belongs_to 	:user
  has_many 		:comments
  has_many		:votes
end
