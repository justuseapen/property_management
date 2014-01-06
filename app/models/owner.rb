class Owner < ActiveRecord::Base
	validates :f_name, :l_name, :email, presence: true
	validates_format_of :email, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
	
	has_many :buildings, dependent: :destroy

	def to_s
		email
	end
end
