class Topic < ApplicationRecord
	validates_presence_of :title

	has_many :blogs

	def self.with_blogs
		includes(:blogs).where.not(blogs: { id: nil }).order('topics.created_at DESC')
	end
end
