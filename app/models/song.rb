class Song < ActiveRecord::Base

    has_many :likes #dependent: :nullify
    has_many :comments #dependent: :nullify
    
	validates :title, presence: true
	validates :embed_code, presence: true

	 scope :recent, -> { order('created_at DESC') }

end
