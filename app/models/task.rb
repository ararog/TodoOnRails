class Task < ActiveRecord::Base
  
   attr_accessible :description, :duedate, :priority, :done

   validates :description, :presence => true
   validates :duedate, :presence => true
   validates :priority, :presence => true
end
