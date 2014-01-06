class Building < ActiveRecord::Base
	validates :street_address, :city, :state, :zip_code, presence: true
	validates :zip_code, length: { is: 5 }
	belongs_to :owner
	
end
