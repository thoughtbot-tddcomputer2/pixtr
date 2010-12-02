class Gallery < ActiveRecord::Base
  validates_presence_of :title
  
  belongs_to :user
  has_many :images
  has_many :comments
end