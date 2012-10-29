module TasksHelper

  def decode_priority(task)
    case task.priority
	when 1
	   "High"
	when 2
	   "Medium"
	else
	   "Low"
	end	
  end
  
  def decode_done(task)
  
  	if task.done
  		"&#x2713;"
  	else
  		""
  	end
  end
end
