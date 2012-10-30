class Task < ActiveRecord::Base
   attr_accessible :description, :duedate, :priority, :done

   scope :ordered, :order => "id ASC"

   belongs_to :user
	
   validates :description, :presence => true
   validates :duedate, :presence => true
   validates :priority, :presence => true
end
