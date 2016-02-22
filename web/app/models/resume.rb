class Resume < ActiveRecord::Base
  mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.
  validates :name, presence: true # Make sure the owner's name is present.
	has_many :comments
	has_many :likes
	belongs_to :user
	has_many :slides , dependent: :destroy
end