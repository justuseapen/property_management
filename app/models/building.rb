class Building < ActiveRecord::Base
	validates :street_address, :city, :state, :zip_code, presence: true
	belongs_to :owner
end
