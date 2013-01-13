class Project < ActiveRecord::Base
	
	has_many :tickets
	validates :name, :presence => true

	has_many :permissions, :as => :thing
	scope :readable_by, lambda { |user| 
		joins(:permissions).where(:permissions => { :action => "view", 
																								:user_id => user.id })}


# The following is equivalent to
# if current_user.admin?
# Project
# else
# Project.readable_by(current_user)
# end

	def self.for(user)
		user.admin? ? Project : Project.readable_by(user)
	end
end
