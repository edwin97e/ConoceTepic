class Site < ApplicationRecord
	belongs_to :category
	belongs_to :user

	validates :name, presence:true, uniqueness: true
	validates :short_description, presence:true
	validates :long_description, presence:true
	validates :category_id, presence:true
	validates :cost, presence:true
	validates :begining_hour, presence:true
	validates :ending_hour, presence:true
	validates :img, presence:true


	has_attached_file :img, :default_url => ":style/rails.jpg"
  	validates_attachment_content_type :img, content_type: /\Aimage\/.*\z/

  	has_attached_file :video
		validates_attachment_content_type :video, content_type: ['video/mp4']
end
